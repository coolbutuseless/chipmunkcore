# Auto-generated

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Allocate and initialize a polygon shape with rounded corners. A convex hull will
#' be created from the vertexes.
#'
#' Allocate and initialize a polygon shape with rounded corners. A convex hull will
#' be created from the vertexes.
#'
#' C function prototype: \code{CP_EXPORT cpShape* cpPolyShapeNew(cpBody *body, int count, const cpVect *verts, cpTransform transform, cpFloat radius);}
#'
#' @param body [\code{cpBody *}]
#' @param count [\code{int}]
#' @param verts [\code{cpVect *}]
#' @param transform [\code{cpTransform *}]
#' @param radius [\code{cpFloat}]
#'
#' @return [\code{cpShape *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpPolyShapeNew <- function(body, count, verts, transform, radius) {
  stopifnot(inherits(body, "cpBody"))
  stopifnot(inherits(verts, "cpVect"))
  stopifnot(inherits(transform, "cpTransform"))
  .Call("cpPolyShapeNew_", body, count, verts, transform, radius)
}


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
