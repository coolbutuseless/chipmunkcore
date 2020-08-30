


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Get the current state for every body in a list
#'
#' @param bodies list of \code{cpBody} objects
#'
#' @return data.frame
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
get_body_state <- function(bodies) {
  .Call(get_body_state_, bodies)
}
