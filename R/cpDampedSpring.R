# Auto-generated

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Allocate and initialize a damped spring.
#'
#' Allocate and initialize a damped spring.
#'
#' C function prototype: \code{CP_EXPORT cpConstraint* cpDampedSpringNew(cpBody *a, cpBody *b, cpVect anchorA, cpVect anchorB, cpFloat restLength, cpFloat stiffness, cpFloat damping);}
#'
#' @param a [\code{cpBody *}]
#' @param b [\code{cpBody *}]
#' @param anchorA [\code{cpVect *}]
#' @param anchorB [\code{cpVect *}]
#' @param restLength [\code{cpFloat}]
#' @param stiffness [\code{cpFloat}]
#' @param damping [\code{cpFloat}]
#'
#' @return [\code{cpConstraint *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpDampedSpringNew <- function(a, b, anchorA, anchorB, restLength, stiffness, damping) {
  stopifnot(inherits(a, "cpBody"))
  stopifnot(inherits(b, "cpBody"))
  stopifnot(inherits(anchorA, "cpVect"))
  stopifnot(inherits(anchorB, "cpVect"))
  .Call("cpDampedSpringNew_", a, b, anchorA, anchorB, restLength, stiffness, damping)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Set the rest length of the spring.
#'
#' Set the rest length of the spring.
#'
#' C function prototype: \code{CP_EXPORT void cpDampedSpringSetRestLength(cpConstraint *constraint, cpFloat restLength);}
#'
#' @param constraint [\code{cpConstraint *}]
#' @param restLength [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpDampedSpringSetRestLength <- function(constraint, restLength) {
  stopifnot(inherits(constraint, "cpConstraint"))
  .Call("cpDampedSpringSetRestLength_", constraint, restLength)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Set the stiffness of the spring in force/distance.
#'
#' Set the stiffness of the spring in force/distance.
#'
#' C function prototype: \code{CP_EXPORT void cpDampedSpringSetStiffness(cpConstraint *constraint, cpFloat stiffness);}
#'
#' @param constraint [\code{cpConstraint *}]
#' @param stiffness [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpDampedSpringSetStiffness <- function(constraint, stiffness) {
  stopifnot(inherits(constraint, "cpConstraint"))
  .Call("cpDampedSpringSetStiffness_", constraint, stiffness)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Set the damping of the spring.
#'
#' Set the damping of the spring.
#'
#' C function prototype: \code{CP_EXPORT void cpDampedSpringSetDamping(cpConstraint *constraint, cpFloat damping);}
#'
#' @param constraint [\code{cpConstraint *}]
#' @param damping [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpDampedSpringSetDamping <- function(constraint, damping) {
  stopifnot(inherits(constraint, "cpConstraint"))
  .Call("cpDampedSpringSetDamping_", constraint, damping)
  invisible(NULL)
}
