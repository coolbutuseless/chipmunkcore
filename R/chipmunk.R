# Auto-generated

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Calculate the moment of inertia for a circle. @c r1 and @c r2 are the inner and
#' outer diameters. A solid circle has an inner diameter of 0.
#'
#' Calculate the moment of inertia for a circle. @c r1 and @c r2 are the inner and
#' outer diameters. A solid circle has an inner diameter of 0.
#'
#' C function prototype: \code{CP_EXPORT cpFloat cpMomentForCircle(cpFloat m, cpFloat r1, cpFloat r2, cpVect offset);}
#'
#' @param m [\code{cpFloat}]
#' @param r1 [\code{cpFloat}]
#' @param r2 [\code{cpFloat}]
#' @param offset [\code{cpVect *}]
#'
#' @return [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpMomentForCircle <- function(m, r1, r2, offset) {
  stopifnot(inherits(offset, "cpVect"))
  .Call("cpMomentForCircle_", m, r1, r2, offset)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Calculate area of a hollow circle. @c r1 and @c r2 are the inner and outer
#' diameters. A solid circle has an inner diameter of 0.
#'
#' Calculate area of a hollow circle. @c r1 and @c r2 are the inner and outer
#' diameters. A solid circle has an inner diameter of 0.
#'
#' C function prototype: \code{CP_EXPORT cpFloat cpAreaForCircle(cpFloat r1, cpFloat r2);}
#'
#' @param r1 [\code{cpFloat}]
#' @param r2 [\code{cpFloat}]
#'
#' @return [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpAreaForCircle <- function(r1, r2) {
  .Call("cpAreaForCircle_", r1, r2)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Calculate the moment of inertia for a line segment. Beveling radius is not
#' supported.
#'
#' Calculate the moment of inertia for a line segment. Beveling radius is not
#' supported.
#'
#' C function prototype: \code{CP_EXPORT cpFloat cpMomentForSegment(cpFloat m, cpVect a, cpVect b, cpFloat radius);}
#'
#' @param m [\code{cpFloat}]
#' @param a [\code{cpVect *}]
#' @param b [\code{cpVect *}]
#' @param radius [\code{cpFloat}]
#'
#' @return [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpMomentForSegment <- function(m, a, b, radius) {
  stopifnot(inherits(a, "cpVect"))
  stopifnot(inherits(b, "cpVect"))
  .Call("cpMomentForSegment_", m, a, b, radius)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Calculate the area of a fattened (capsule shaped) line segment.
#'
#' Calculate the area of a fattened (capsule shaped) line segment.
#'
#' C function prototype: \code{CP_EXPORT cpFloat cpAreaForSegment(cpVect a, cpVect b, cpFloat radius);}
#'
#' @param a [\code{cpVect *}]
#' @param b [\code{cpVect *}]
#' @param radius [\code{cpFloat}]
#'
#' @return [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpAreaForSegment <- function(a, b, radius) {
  stopifnot(inherits(a, "cpVect"))
  stopifnot(inherits(b, "cpVect"))
  .Call("cpAreaForSegment_", a, b, radius)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Calculate the moment of inertia for a solid polygon shape assuming it's center
#' of gravity is at it's centroid. The offset is added to each vertex.
#'
#' Calculate the moment of inertia for a solid polygon shape assuming it's center
#' of gravity is at it's centroid. The offset is added to each vertex.
#'
#' C function prototype: \code{CP_EXPORT cpFloat cpMomentForPoly(cpFloat m, int count, const cpVect *verts, cpVect offset, cpFloat radius);}
#'
#' @param m [\code{cpFloat}]
#' @param count [\code{int}]
#' @param verts [\code{cpVect *}]
#' @param offset [\code{cpVect *}]
#' @param radius [\code{cpFloat}]
#'
#' @return [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpMomentForPoly <- function(m, count, verts, offset, radius) {
  stopifnot(inherits(verts, "cpVect"))
  stopifnot(inherits(offset, "cpVect"))
  .Call("cpMomentForPoly_", m, count, verts, offset, radius)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Calculate the signed area of a polygon. A Clockwise winding gives positive area.
#' This is probably backwards from what you expect, but matches Chipmunk's the
#' winding for poly shapes.
#'
#' Calculate the signed area of a polygon. A Clockwise winding gives positive area.
#' This is probably backwards from what you expect, but matches Chipmunk's the
#' winding for poly shapes.
#'
#' C function prototype: \code{CP_EXPORT cpFloat cpAreaForPoly(const int count, const cpVect *verts, cpFloat radius);}
#'
#' @param count [\code{int}]
#' @param verts [\code{cpVect *}]
#' @param radius [\code{cpFloat}]
#'
#' @return [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpAreaForPoly <- function(count, verts, radius) {
  stopifnot(inherits(verts, "cpVect"))
  .Call("cpAreaForPoly_", count, verts, radius)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Calculate the natural centroid of a polygon.
#'
#' Calculate the natural centroid of a polygon.
#'
#' C function prototype: \code{CP_EXPORT cpVect cpCentroidForPoly(const int count, const cpVect *verts);}
#'
#' @param count [\code{int}]
#' @param verts [\code{cpVect *}]
#'
#' @return [\code{cpVect *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpCentroidForPoly <- function(count, verts) {
  stopifnot(inherits(verts, "cpVect"))
  .Call("cpCentroidForPoly_", count, verts)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Calculate the moment of inertia for a solid box.
#'
#' Calculate the moment of inertia for a solid box.
#'
#' C function prototype: \code{CP_EXPORT cpFloat cpMomentForBox(cpFloat m, cpFloat width, cpFloat height);}
#'
#' @param m [\code{cpFloat}]
#' @param width [\code{cpFloat}]
#' @param height [\code{cpFloat}]
#'
#' @return [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpMomentForBox <- function(m, width, height) {
  .Call("cpMomentForBox_", m, width, height)
}
