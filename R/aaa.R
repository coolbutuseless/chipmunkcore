#' @useDynLib chipmunkcore, .registration=TRUE
NULL






if (FALSE) {

  suppressPackageStartupMessages({
    library(dplyr)
    library(cheddar)
  })


  cp_ignores <- 'CP_EXPORT'

  prototype_text <- 'CP_EXPORT void cpSpaceStep(cpSpace *space, cpFloat dt);'
  proto <- function_prototype_to_proto(prototype_text, ignore = cp_ignores)
  terse::terse(proto)


  {
    cheddar::proto_to_roxygen(proto)         %>% cat()
    cat('\n')
    cheddar::proto_to_r_function_text(proto) %>% cat()
    cat("\n\n")
  }

  {
    cheddar::proto_to_c_function_text(proto, finalizer = NULL, dbl_types = 'cpFloat') %>% cat()
    cat("\n\n")
  }

  cheddar::proto_to_call_method_def(proto)

}
