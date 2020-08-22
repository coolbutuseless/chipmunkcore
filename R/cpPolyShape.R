# Auto-generated

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Allocate and initialize a box shaped polygon shape.
#'
#' Allocate and initialize a box shaped polygon shape.
#'
#' C function prototype: \code{CP_EXPORT cpShape* cpBoxShapeNew(cpBody *body, cpFloat width, cpFloat height, cpFloat radius);}
#'
#' @param body [\code{cpBody *}]
#' @param width [\code{cpFloat}]
#' @param height [\code{cpFloat}]
#' @param radius [\code{cpFloat}]
#'
#' @return [\code{cpShape *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpBoxShapeNew <- function(body, width, height, radius) {
  stopifnot(inherits(body, "cpBody"))
  .Call("cpBoxShapeNew_", body, width, height, radius)
}
