

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' cpShapeSetFriction
#'
#' \code{ CP_EXPORT void cpShapeSetFriction(cpShape *shape, cpFloat friction); }
#'
#' @param shape \code{cpShape *}
#' @param friction \code{cpFloat}
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpShapeSetFriction <- function(shape, friction) {
  stopifnot(inherits(shape, "cpShape"))
  .Call("cpShapeSetFriction_", shape, friction)
  invisible(NULL)
}



#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' cpCircleShapeNew
#'
#' \code{ CP_EXPORT cpShape* cpCircleShapeNew(cpBody *body, cpFloat radius, cpVect offset); }
#'
#' @param body \code{cpBody *}
#' @param radius \code{cpFloat}
#' @param offset \code{cpVect *}
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpCircleShapeNew <- function(body, radius, offset) {
  stopifnot(inherits(body, "cpBody"))
  stopifnot(inherits(offset, "cpVect"))
  .Call("cpCircleShapeNew_", body, radius, offset)
}



#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' cpSegmentShapeNew
#'
#' \code{ CP_EXPORT cpShape* cpSegmentShapeNew(cpBody *body, cpVect a, cpVect b, cpFloat radius); }
#'
#' @param body \code{cpBody *}
#' @param a \code{cpVect *}
#' @param b \code{cpVect *}
#' @param radius \code{cpFloat}
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSegmentShapeNew <- function(body, a, b, radius) {
  stopifnot(inherits(body, "cpBody"))
  stopifnot(inherits(a, "cpVect"))
  stopifnot(inherits(b, "cpVect"))
  .Call("cpSegmentShapeNew_", body, a, b, radius)
}


