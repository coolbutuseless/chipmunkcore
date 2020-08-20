# Auto-generated

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Allocate and initialize a cpSpace.
#'
#' Allocate and initialize a cpSpace.
#'
#' C function prototype: \code{CP_EXPORT cpSpace* cpSpaceNew(void);}
#'
#' @return [\code{cpSpace *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceNew <- function() {
  .Call("cpSpaceNew_")
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Number of iterations to use in the impulse solver to solve contacts and other
#' constraints.
#'
#' Number of iterations to use in the impulse solver to solve contacts and other
#' constraints.
#'
#' C function prototype: \code{CP_EXPORT void cpSpaceSetIterations(cpSpace *space, int iterations);}
#'
#' @param space [\code{cpSpace *}]
#' @param iterations [\code{int}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceSetIterations <- function(space, iterations) {
  stopifnot(inherits(space, "cpSpace"))
  .Call("cpSpaceSetIterations_", space, iterations)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Gravity to pass to rigid bodies when integrating velocity.
#'
#' Gravity to pass to rigid bodies when integrating velocity.
#'
#' C function prototype: \code{CP_EXPORT void cpSpaceSetGravity(cpSpace *space, cpVect gravity);}
#'
#' @param space [\code{cpSpace *}]
#' @param gravity [\code{cpVect *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceSetGravity <- function(space, gravity) {
  stopifnot(inherits(space, "cpSpace"))
  stopifnot(inherits(gravity, "cpVect"))
  .Call("cpSpaceSetGravity_", space, gravity)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Damping rate expressed as the fraction of velocity bodies retain each second. A
#' value of 0.9 would mean that each body's velocity will drop 10\% per second. The
#' default value is 1.0, meaning no damping is applied. @note This damping value is
#' different than those of cpDampedSpring and cpDampedRotarySpring.
#'
#' Damping rate expressed as the fraction of velocity bodies retain each second. A
#' value of 0.9 would mean that each body's velocity will drop 10\% per second. The
#' default value is 1.0, meaning no damping is applied. @note This damping value is
#' different than those of cpDampedSpring and cpDampedRotarySpring.
#'
#' C function prototype: \code{CP_EXPORT void cpSpaceSetDamping(cpSpace *space, cpFloat damping);}
#'
#' @param space [\code{cpSpace *}]
#' @param damping [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceSetDamping <- function(space, damping) {
  stopifnot(inherits(space, "cpSpace"))
  .Call("cpSpaceSetDamping_", space, damping)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Speed threshold for a body to be considered idle. The default value of 0 means
#' to let the space guess a good threshold based on gravity.
#'
#' Speed threshold for a body to be considered idle. The default value of 0 means
#' to let the space guess a good threshold based on gravity.
#'
#' C function prototype: \code{CP_EXPORT void cpSpaceSetIdleSpeedThreshold(cpSpace *space, cpFloat idleSpeedThreshold);}
#'
#' @param space [\code{cpSpace *}]
#' @param idleSpeedThreshold [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceSetIdleSpeedThreshold <- function(space, idleSpeedThreshold) {
  stopifnot(inherits(space, "cpSpace"))
  .Call("cpSpaceSetIdleSpeedThreshold_", space, idleSpeedThreshold)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Time a group of bodies must remain idle in order to fall asleep. Enabling
#' sleeping also implicitly enables the the contact graph. The default value of
#' INFINITY disables the sleeping algorithm.
#'
#' Time a group of bodies must remain idle in order to fall asleep. Enabling
#' sleeping also implicitly enables the the contact graph. The default value of
#' INFINITY disables the sleeping algorithm.
#'
#' C function prototype: \code{CP_EXPORT void cpSpaceSetSleepTimeThreshold(cpSpace *space, cpFloat sleepTimeThreshold);}
#'
#' @param space [\code{cpSpace *}]
#' @param sleepTimeThreshold [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceSetSleepTimeThreshold <- function(space, sleepTimeThreshold) {
  stopifnot(inherits(space, "cpSpace"))
  .Call("cpSpaceSetSleepTimeThreshold_", space, sleepTimeThreshold)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Amount of encouraged penetration between colliding shapes. Used to reduce
#' oscillating contacts and keep the collision cache warm. Defaults to 0.1. If you
#' have poor simulation quality, increase this number as much as possible without
#' allowing visible amounts of overlap.
#'
#' Amount of encouraged penetration between colliding shapes. Used to reduce
#' oscillating contacts and keep the collision cache warm. Defaults to 0.1. If you
#' have poor simulation quality, increase this number as much as possible without
#' allowing visible amounts of overlap.
#'
#' C function prototype: \code{CP_EXPORT void cpSpaceSetCollisionSlop(cpSpace *space, cpFloat collisionSlop);}
#'
#' @param space [\code{cpSpace *}]
#' @param collisionSlop [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceSetCollisionSlop <- function(space, collisionSlop) {
  stopifnot(inherits(space, "cpSpace"))
  .Call("cpSpaceSetCollisionSlop_", space, collisionSlop)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Determines how fast overlapping shapes are pushed apart. Expressed as a fraction
#' of the error remaining after each second. Defaults to pow(1.0 - 0.1, 60.0)
#' meaning that Chipmunk fixes 10\% of overlap each frame at 60Hz.
#'
#' Determines how fast overlapping shapes are pushed apart. Expressed as a fraction
#' of the error remaining after each second. Defaults to pow(1.0 - 0.1, 60.0)
#' meaning that Chipmunk fixes 10\% of overlap each frame at 60Hz.
#'
#' C function prototype: \code{CP_EXPORT void cpSpaceSetCollisionBias(cpSpace *space, cpFloat collisionBias);}
#'
#' @param space [\code{cpSpace *}]
#' @param collisionBias [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceSetCollisionBias <- function(space, collisionBias) {
  stopifnot(inherits(space, "cpSpace"))
  .Call("cpSpaceSetCollisionBias_", space, collisionBias)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' The Space provided static body for a given cpSpace. This is merely provided for
#' convenience and you are not required to use it.
#'
#' The Space provided static body for a given cpSpace. This is merely provided for
#' convenience and you are not required to use it.
#'
#' C function prototype: \code{CP_EXPORT cpBody* cpSpaceGetStaticBody(const cpSpace *space);}
#'
#' @param space [\code{cpSpace *}]
#'
#' @return [\code{cpBody *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceGetStaticBody <- function(space) {
  stopifnot(inherits(space, "cpSpace"))
  .Call("cpSpaceGetStaticBody_", space)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Returns the current (or most recent) time step used with the given space. Useful
#' from callbacks if your time step is not a compile-time global.
#'
#' Returns the current (or most recent) time step used with the given space. Useful
#' from callbacks if your time step is not a compile-time global.
#'
#' C function prototype: \code{CP_EXPORT cpFloat cpSpaceGetCurrentTimeStep(const cpSpace *space);}
#'
#' @param space [\code{cpSpace *}]
#'
#' @return [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceGetCurrentTimeStep <- function(space) {
  stopifnot(inherits(space, "cpSpace"))
  .Call("cpSpaceGetCurrentTimeStep_", space)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Add a collision shape to the simulation. If the shape is attached to a static
#' body, it will be added as a static shape.
#'
#' Add a collision shape to the simulation. If the shape is attached to a static
#' body, it will be added as a static shape.
#'
#' C function prototype: \code{CP_EXPORT void cpSpaceAddShape(cpSpace *space, cpShape *shape);}
#'
#' @param space [\code{cpSpace *}]
#' @param shape [\code{cpShape *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceAddShape <- function(space, shape) {
  stopifnot(inherits(space, "cpSpace"))
  stopifnot(inherits(shape, "cpShape"))
  .Call("cpSpaceAddShape_", space, shape)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Add a rigid body to the simulation.
#'
#' Add a rigid body to the simulation.
#'
#' C function prototype: \code{CP_EXPORT void cpSpaceAddBody(cpSpace *space, cpBody *body);}
#'
#' @param space [\code{cpSpace *}]
#' @param body [\code{cpBody *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceAddBody <- function(space, body) {
  stopifnot(inherits(space, "cpSpace"))
  stopifnot(inherits(body, "cpBody"))
  .Call("cpSpaceAddBody_", space, body)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Add a constraint to the simulation.
#'
#' Add a constraint to the simulation.
#'
#' C function prototype: \code{CP_EXPORT void cpSpaceAddConstraint(cpSpace *space, cpConstraint *constraint);}
#'
#' @param space [\code{cpSpace *}]
#' @param constraint [\code{cpConstraint *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceAddConstraint <- function(space, constraint) {
  stopifnot(inherits(space, "cpSpace"))
  stopifnot(inherits(constraint, "cpConstraint"))
  .Call("cpSpaceAddConstraint_", space, constraint)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Remove a collision shape from the simulation.
#'
#' Remove a collision shape from the simulation.
#'
#' C function prototype: \code{CP_EXPORT void cpSpaceRemoveShape(cpSpace *space, cpShape *shape);}
#'
#' @param space [\code{cpSpace *}]
#' @param shape [\code{cpShape *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceRemoveShape <- function(space, shape) {
  stopifnot(inherits(space, "cpSpace"))
  stopifnot(inherits(shape, "cpShape"))
  .Call("cpSpaceRemoveShape_", space, shape)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Remove a rigid body from the simulation.
#'
#' Remove a rigid body from the simulation.
#'
#' C function prototype: \code{CP_EXPORT void cpSpaceRemoveBody(cpSpace *space, cpBody *body);}
#'
#' @param space [\code{cpSpace *}]
#' @param body [\code{cpBody *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceRemoveBody <- function(space, body) {
  stopifnot(inherits(space, "cpSpace"))
  stopifnot(inherits(body, "cpBody"))
  .Call("cpSpaceRemoveBody_", space, body)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Test if a collision shape has been added to the space.
#'
#' Test if a collision shape has been added to the space.
#'
#' C function prototype: \code{CP_EXPORT cpBool cpSpaceContainsShape(cpSpace *space, cpShape *shape);}
#'
#' @param space [\code{cpSpace *}]
#' @param shape [\code{cpShape *}]
#'
#' @return [\code{cpBool}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceContainsShape <- function(space, shape) {
  stopifnot(inherits(space, "cpSpace"))
  stopifnot(inherits(shape, "cpShape"))
  .Call("cpSpaceContainsShape_", space, shape)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Test if a rigid body has been added to the space.
#'
#' Test if a rigid body has been added to the space.
#'
#' C function prototype: \code{CP_EXPORT cpBool cpSpaceContainsBody(cpSpace *space, cpBody *body);}
#'
#' @param space [\code{cpSpace *}]
#' @param body [\code{cpBody *}]
#'
#' @return [\code{cpBool}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceContainsBody <- function(space, body) {
  stopifnot(inherits(space, "cpSpace"))
  stopifnot(inherits(body, "cpBody"))
  .Call("cpSpaceContainsBody_", space, body)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Update the collision detection info for the static shapes in the space.
#'
#' Update the collision detection info for the static shapes in the space.
#'
#' C function prototype: \code{CP_EXPORT void cpSpaceReindexStatic(cpSpace *space);}
#'
#' @param space [\code{cpSpace *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceReindexStatic <- function(space) {
  stopifnot(inherits(space, "cpSpace"))
  .Call("cpSpaceReindexStatic_", space)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Update the collision detection data for a specific shape in the space.
#'
#' Update the collision detection data for a specific shape in the space.
#'
#' C function prototype: \code{CP_EXPORT void cpSpaceReindexShape(cpSpace *space, cpShape *shape);}
#'
#' @param space [\code{cpSpace *}]
#' @param shape [\code{cpShape *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceReindexShape <- function(space, shape) {
  stopifnot(inherits(space, "cpSpace"))
  stopifnot(inherits(shape, "cpShape"))
  .Call("cpSpaceReindexShape_", space, shape)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Update the collision detection data for all shapes attached to a body.
#'
#' Update the collision detection data for all shapes attached to a body.
#'
#' C function prototype: \code{CP_EXPORT void cpSpaceReindexShapesForBody(cpSpace *space, cpBody *body);}
#'
#' @param space [\code{cpSpace *}]
#' @param body [\code{cpBody *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceReindexShapesForBody <- function(space, body) {
  stopifnot(inherits(space, "cpSpace"))
  stopifnot(inherits(body, "cpBody"))
  .Call("cpSpaceReindexShapesForBody_", space, body)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Step the space forward in time by @c dt.
#'
#' Step the space forward in time by @c dt.
#'
#' C function prototype: \code{CP_EXPORT void cpSpaceStep(cpSpace *space, cpFloat dt);}
#'
#' @param space [\code{cpSpace *}]
#' @param dt [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpSpaceStep <- function(space, dt) {
  stopifnot(inherits(space, "cpSpace"))
  .Call("cpSpaceStep_", space, dt)
  invisible(NULL)
}
