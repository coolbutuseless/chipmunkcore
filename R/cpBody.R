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
