# Auto-generated

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Allocate and initialize a cpBody.
#'
#' Allocate and initialize a cpBody.
#'
#' C function prototype: \code{CP_EXPORT cpBody* cpBodyNew(cpFloat mass, cpFloat moment);}
#'
#' @param mass [\code{cpFloat}]
#' @param moment [\code{cpFloat}]
#'
#' @return [\code{cpBody *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpBodyNew <- function(mass, moment) {
  .Call("cpBodyNew_", mass, moment)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Set the position of a body.
#'
#' Set the position of a body.
#'
#' C function prototype: \code{CP_EXPORT cpVect cpBodyGetPosition(const cpBody *body);}
#'
#' @param body [\code{cpBody *}]
#'
#' @return [\code{cpVect *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpBodyGetPosition <- function(body) {
  stopifnot(inherits(body, "cpBody"))
  .Call("cpBodyGetPosition_", body)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Set the position of the body.
#'
#' Set the position of the body.
#'
#' C function prototype: \code{CP_EXPORT void cpBodySetPosition(cpBody *body, cpVect pos);}
#'
#' @param body [\code{cpBody *}]
#' @param pos [\code{cpVect *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpBodySetPosition <- function(body, pos) {
  stopifnot(inherits(body, "cpBody"))
  stopifnot(inherits(pos, "cpVect"))
  .Call("cpBodySetPosition_", body, pos)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Get the offset of the center of gravity in body local coordinates.
#'
#' Get the offset of the center of gravity in body local coordinates.
#'
#' C function prototype: \code{CP_EXPORT cpVect cpBodyGetCenterOfGravity(const cpBody *body);}
#'
#' @param body [\code{cpBody *}]
#'
#' @return [\code{cpVect *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpBodyGetCenterOfGravity <- function(body) {
  stopifnot(inherits(body, "cpBody"))
  .Call("cpBodyGetCenterOfGravity_", body)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Get the velocity of the body.
#'
#' Get the velocity of the body.
#'
#' C function prototype: \code{CP_EXPORT cpVect cpBodyGetVelocity(const cpBody *body);}
#'
#' @param body [\code{cpBody *}]
#'
#' @return [\code{cpVect *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpBodyGetVelocity <- function(body) {
  stopifnot(inherits(body, "cpBody"))
  .Call("cpBodyGetVelocity_", body)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Set the velocity of the body.
#'
#' Set the velocity of the body.
#'
#' C function prototype: \code{CP_EXPORT void cpBodySetVelocity(cpBody *body, cpVect velocity);}
#'
#' @param body [\code{cpBody *}]
#' @param velocity [\code{cpVect *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpBodySetVelocity <- function(body, velocity) {
  stopifnot(inherits(body, "cpBody"))
  stopifnot(inherits(velocity, "cpVect"))
  .Call("cpBodySetVelocity_", body, velocity)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Get the force applied to the body for the next time step.
#'
#' Get the force applied to the body for the next time step.
#'
#' C function prototype: \code{CP_EXPORT cpVect cpBodyGetForce(const cpBody *body);}
#'
#' @param body [\code{cpBody *}]
#'
#' @return [\code{cpVect *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpBodyGetForce <- function(body) {
  stopifnot(inherits(body, "cpBody"))
  .Call("cpBodyGetForce_", body)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Get the angle of the body.
#'
#' Get the angle of the body.
#'
#' C function prototype: \code{CP_EXPORT cpFloat cpBodyGetAngle(const cpBody *body);}
#'
#' @param body [\code{cpBody *}]
#'
#' @return [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpBodyGetAngle <- function(body) {
  stopifnot(inherits(body, "cpBody"))
  .Call("cpBodyGetAngle_", body)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Set the angle of a body.
#'
#' Set the angle of a body.
#'
#' C function prototype: \code{CP_EXPORT void cpBodySetAngle(cpBody *body, cpFloat a);}
#'
#' @param body [\code{cpBody *}]
#' @param a [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpBodySetAngle <- function(body, a) {
  stopifnot(inherits(body, "cpBody"))
  .Call("cpBodySetAngle_", body, a)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Set the angular velocity of the body.
#'
#' Set the angular velocity of the body.
#'
#' C function prototype: \code{CP_EXPORT void cpBodySetAngularVelocity(cpBody *body, cpFloat angularVelocity);}
#'
#' @param body [\code{cpBody *}]
#' @param angularVelocity [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpBodySetAngularVelocity <- function(body, angularVelocity) {
  stopifnot(inherits(body, "cpBody"))
  .Call("cpBodySetAngularVelocity_", body, angularVelocity)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Set the torque applied to the body for the next time step.
#'
#' Set the torque applied to the body for the next time step.
#'
#' C function prototype: \code{CP_EXPORT void cpBodySetTorque(cpBody *body, cpFloat torque);}
#'
#' @param body [\code{cpBody *}]
#' @param torque [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpBodySetTorque <- function(body, torque) {
  stopifnot(inherits(body, "cpBody"))
  .Call("cpBodySetTorque_", body, torque)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Get the rotation vector of the body. (The x basis vector of it's transform.)
#'
#' Get the rotation vector of the body. (The x basis vector of it's transform.)
#'
#' C function prototype: \code{CP_EXPORT cpVect cpBodyGetRotation(const cpBody *body);}
#'
#' @param body [\code{cpBody *}]
#'
#' @return [\code{cpVect *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpBodyGetRotation <- function(body) {
  stopifnot(inherits(body, "cpBody"))
  .Call("cpBodyGetRotation_", body)
}
