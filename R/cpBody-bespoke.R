


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Get all info for a list of bodies
#'
#' @param bodies list of \code{cpBody} objects
#'
#' @return data.frame
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
get_all_body_info <- function(bodies) {
  .Call(get_all_body_info_, bodies)
}
