
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Create a pointer to a \code{cpVect} struct
#'
#' @param x,y [double] coordiantes. vectorised
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpVect <- function(x, y) {
  .Call('cpVect_', x, y)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname cpVect
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpv <- function(x, y) {
  .Call('cpVect_', x, y)
}





#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Unpack cpVect struct to a list
#'
#' @param x \code{cpVect *}
#' @param ... other arguments ignored
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
as.list.cpVect <- function(x, ...) {
  stopifnot(inherits(x, 'cpVect'))
  .Call('cpVect_to_list_', x)
}




if (FALSE) {

  suppressPackageStartupMessages({
    library(dplyr)
    library(cheddar)
  })

  struct_text <- "typedef struct cpVect{double x; double y;} cpVect;"

  struct <- cheddar::parse_struct(struct_text)

  cheddar::struct_to_c_unpack_function_text(struct)
  cheddar::struct_to_r_unpack_function_text(struct_name = struct$name)

  cheddar::struct_name_to_c_init_function_text(struct$name)
  cheddar::struct_name_to_r_init_function_text(struct$name)


}
