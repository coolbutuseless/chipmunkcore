

suppressPackageStartupMessages({
  library(purrr)
  library(cheddar)
})

options(warnPartialMatchDollar = TRUE)

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Source all the header files to initiate all the lists of header information.
#
# Header files contain a list of 'spec' objects where a spec is a combo of:
#   (1) the doxygen documentation from the original C header file
#   (2) the function declaration from the original C header file
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
header_files <- list.files(here::here("data-raw/headers-r"), pattern = "\\.R", full.names = TRUE)
header_files %>% walk(source)


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Calculate the name of all the header information objects
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
header_names <- tools::file_path_sans_ext(basename(header_files))
header_names <- gsub("-+", "_", header_names)
header_names


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Calculate the output file root name
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
root_names <- gsub("_header", "", header_names)
root_names <- gsub("-header", "", root_names)
root_names <- gsub("_", "-", root_names)
# root_names[root_names == 'cairo'] <- 'cairo--'
root_names


i <- 3
func_specs    <- get(header_names[i])
root_name <- root_names[i]


all_externs <- c()
all_callmethoddefs <- c()


for (i in seq_along(header_names)) {

  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Pick a func_specs and its output root name
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # func_specs    <- sdl_video_header
  # root_name <- "sdl-video"
  func_specs    <- get(header_names[i])
  root_name <- root_names[i]

  cat(header_names[i], "->", root_name, "\n")

  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # What functions are marked as 'include'?
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  func_specs <- keep(func_specs, ~isTRUE(.x$include))
  names(func_specs)


  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Text to ignore when parsing function prototype to 'proto' object
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ignore <- c('CP_EXPORT')


  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Override some 'enum' types to read as integer types for code generation
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  type_override = c(
    # int = 'cairo_format_t'
  )

  int_types = c('cpBool')
  dbl_types = c('cpFloat')

  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Helper function to create a full R function from a spec.
  # A spec is a combo of:
  #   (1) the doxygen documentation from the original C header file
  #   (2) the function declaration from the original C header file
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  create_r <- function(spec) {
    # print(spec$proto_text)
    proto   <- function_prototype_to_proto(spec$proto_text,
                                           ignore             = ignore,
                                           type_override      = type_override,
                                           null_allowed       = spec$null_allowed,
                                           promote_to_pointer = 'cpVect')
    roxy    <- doxygen_chipmunk_to_roxylist(spec$doxy)
    roxy    <- update_roxylist_with_proto(roxy, proto)
    roxygen <- roxylist_to_roxygen(roxy)
    rfunc   <- proto_to_r_function_text(
      proto,
      pre  = spec$pre_r,
      post = spec$post_r
    )
    paste(roxygen, rfunc, sep = "\n")
  }


  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Loop over all specs to create all R functions text
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  r_funcs <- NULL
  r_funcs <- map_chr(func_specs, create_r)
  r_output <- paste(r_funcs, collapse = "\n\n\n")
  r_output <- paste("# Auto-generated", r_output, sep = "\n\n")
  # cat(r_output)


  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Save R code to file in the package
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  r_filename <- paste0(root_name, ".R")
  r_filename <- here::here("R", r_filename)
  writeLines(r_output, r_filename)



  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Define the generate pre-amble/headers/includes for all C files
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  c_includes <- '// Auto-generated

#include <R.h>
#include <Rinternals.h>
#include <Rdefines.h>
#include <chipmunk/chipmunk.h>

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "aaa.h"
#include "R-finalizers.h"'


  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Helper function to create a full C function from a spec.
  # A spec is a combo of:
  #   (1) the doxygen documentation from the original C header file
  #   (2) the function declaration from the original C header file
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  create_c <- function(spec) {
    # print(spec$proto_text)
    proto   <- function_prototype_to_proto(
      spec$proto_text,
      ignore             = ignore,
      type_override      = type_override,
      null_allowed       = spec$null_allowed,
      promote_to_pointer = 'cpVect'
    )
    proto_to_c_function_text(
      proto,
      int_types = int_types,
      dbl_types = dbl_types,
      finalizer = spec$finalizer,
      pre       = spec$pre_c,
      post      = spec$post_c
    )
  }


  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Create all the C code
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  c_funcs  <- NULL
  c_funcs  <- map_chr(func_specs, create_c)
  c_output <- paste(c_funcs, collapse = "\n\n\n")
  c_output <- paste(c_includes, c_output, sep = "\n\n\n")
  # cat(c_output)


  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Output c code to the src/ directory in the package
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  c_filename <- paste0(root_name, ".c")
  c_filename <- here::here("src", c_filename)
  writeLines(c_output, c_filename)



  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Create some 'init.c' related artefacts.
  # Not currently automatically inserted, but they should be
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  create_extern <- function(spec) {
    proto   <- function_prototype_to_proto(
      spec$proto_text,
      ignore        = ignore,
      type_override = type_override,
      null_allowed  = spec$null_allowed
    )
    proto_to_extern(proto)
  }

  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Create some 'init.c' related artefacts.
  # Not currently automatically inserted, but they should be
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  create_callmethodef <- function(spec) {
    proto   <- function_prototype_to_proto(spec$proto_text, ignore = ignore, type_override = type_override,
                                           null_allowed = spec$null_allowed)
    proto_to_call_method_def(proto)
  }

  externs <- map_chr(func_specs, create_extern)
  externs <- c(paste("//", root_name, ""), externs, "")
  all_externs <- c(all_externs, externs)


  callmethoddefs <- map_chr(func_specs, create_callmethodef)
  callmethoddefs <- paste0("  ", callmethoddefs, ",")
  callmethoddefs <- c(paste("  //", root_name, ""), callmethoddefs)
  all_callmethoddefs <- c(all_callmethoddefs, callmethoddefs, "")
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Insert definitions into init
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
init_callmethoddefs <- all_callmethoddefs
init_externs        <- all_externs


init_file <- here::here("src", "init.c")
init <- readLines(init_file)

cmd_start <- grep("// ---- begin auto-generated callmethoddefs ----", init)
cmd_end   <- grep("// ---- end auto-generated callmethoddefs ----", init)
ext_start <- grep("// ---- begin auto-generated externs ----", init)
ext_end   <- grep("// ---- end auto-generated externs ----", init)


init <- c(init[1:cmd_start], all_callmethoddefs, init[cmd_end:length(init)])
init <- c(init[1:ext_start], all_externs       , init[ext_end:length(init)])


writeLines(init, init_file)



#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Tidy whitespace
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
system(r"{sed -i '' -e's/[[:space:]]*$//' R/*.R}")
system(r"{sed -i '' -e's/[[:space:]]*$//' src/*.c}")



