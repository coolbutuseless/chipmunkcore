# Auto-generated

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Set the mass of this shape to have Chipmunk calculate mass properties for you.
#'
#' Set the mass of this shape to have Chipmunk calculate mass properties for you.
#'
#' C function prototype: \code{CP_EXPORT void cpShapeSetMass(cpShape *shape, cpFloat mass);}
#'
#' @param shape [\code{cpShape *}]
#' @param mass [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpShapeSetMass <- function(shape, mass) {
  stopifnot(inherits(shape, "cpShape"))
  .Call("cpShapeSetMass_", shape, mass)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Set the density of this shape to have Chipmunk calculate mass properties for
#' you.
#'
#' Set the density of this shape to have Chipmunk calculate mass properties for
#' you.
#'
#' C function prototype: \code{CP_EXPORT void cpShapeSetDensity(cpShape *shape, cpFloat density);}
#'
#' @param shape [\code{cpShape *}]
#' @param density [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpShapeSetDensity <- function(shape, density) {
  stopifnot(inherits(shape, "cpShape"))
  .Call("cpShapeSetDensity_", shape, density)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Get the calculated moment of inertia for this shape.
#'
#' Get the calculated moment of inertia for this shape.
#'
#' C function prototype: \code{CP_EXPORT cpFloat cpShapeGetMoment(cpShape *shape);}
#'
#' @param shape [\code{cpShape *}]
#'
#' @return [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpShapeGetMoment <- function(shape) {
  stopifnot(inherits(shape, "cpShape"))
  .Call("cpShapeGetMoment_", shape)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Get the calculated area of this shape.
#'
#' Get the calculated area of this shape.
#'
#' C function prototype: \code{CP_EXPORT cpFloat cpShapeGetArea(cpShape *shape);}
#'
#' @param shape [\code{cpShape *}]
#'
#' @return [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpShapeGetArea <- function(shape) {
  stopifnot(inherits(shape, "cpShape"))
  .Call("cpShapeGetArea_", shape)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Get the centroid of this shape.
#'
#' Get the centroid of this shape.
#'
#' C function prototype: \code{CP_EXPORT cpVect cpShapeGetCenterOfGravity(cpShape *shape);}
#'
#' @param shape [\code{cpShape *}]
#'
#' @return [\code{cpVect *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpShapeGetCenterOfGravity <- function(shape) {
  stopifnot(inherits(shape, "cpShape"))
  .Call("cpShapeGetCenterOfGravity_", shape)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Set if the shape is a sensor or not.
#'
#' Set if the shape is a sensor or not.
#'
#' C function prototype: \code{CP_EXPORT void cpShapeSetSensor(cpShape *shape, cpBool sensor); }
#'
#' @param shape [\code{cpShape *}]
#' @param sensor [\code{cpBool}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpShapeSetSensor <- function(shape, sensor) {
  stopifnot(inherits(shape, "cpShape"))
  .Call("cpShapeSetSensor_", shape, sensor)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Set the elasticity of this shape.
#'
#' Set the elasticity of this shape.
#'
#' C function prototype: \code{CP_EXPORT void cpShapeSetElasticity(cpShape *shape, cpFloat elasticity);}
#'
#' @param shape [\code{cpShape *}]
#' @param elasticity [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpShapeSetElasticity <- function(shape, elasticity) {
  stopifnot(inherits(shape, "cpShape"))
  .Call("cpShapeSetElasticity_", shape, elasticity)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Set the friction of this shape.
#'
#' Set the friction of this shape.
#'
#' C function prototype: \code{CP_EXPORT void cpShapeSetFriction(cpShape *shape, cpFloat friction);}
#'
#' @param shape [\code{cpShape *}]
#' @param friction [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpShapeSetFriction <- function(shape, friction) {
  stopifnot(inherits(shape, "cpShape"))
  .Call("cpShapeSetFriction_", shape, friction)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Allocate and initialize a circle shape.
#'
#' Allocate and initialize a circle shape.
#'
#' C function prototype: \code{CP_EXPORT cpShape* cpCircleShapeNew(cpBody *body, cpFloat radius, cpVect offset);}
#'
#' @param body [\code{cpBody *}]
#' @param radius [\code{cpFloat}]
#' @param offset [\code{cpVect *}]
#'
#' @return [\code{cpShape *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpCircleShapeNew <- function(body, radius, offset) {
  stopifnot(inherits(body, "cpBody"))
  stopifnot(inherits(offset, "cpVect"))
  .Call("cpCircleShapeNew_", body, radius, offset)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Allocate and initialize a segment shape.
#'
#' Allocate and initialize a segment shape.
#'
#' C function prototype: \code{CP_EXPORT cpShape* cpSegmentShapeNew(cpBody *body, cpVect a, cpVect b, cpFloat radius);}
#'
#' @param body [\code{cpBody *}]
#' @param a [\code{cpVect *}]
#' @param b [\code{cpVect *}]
#' @param radius [\code{cpFloat}]
#'
#' @return [\code{cpShape *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSegmentShapeNew <- function(body, a, b, radius) {
  stopifnot(inherits(body, "cpBody"))
  stopifnot(inherits(a, "cpVect"))
  stopifnot(inherits(b, "cpVect"))
  .Call("cpSegmentShapeNew_", body, a, b, radius)
}
