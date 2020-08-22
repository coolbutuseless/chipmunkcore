# Auto-generated

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Set the maximum force that this constraint is allowed to use. (defaults to
#' INFINITY)
#'
#' Set the maximum force that this constraint is allowed to use. (defaults to
#' INFINITY)
#'
#' C function prototype: \code{CP_EXPORT void cpConstraintSetMaxForce(cpConstraint *constraint, cpFloat maxForce);}
#'
#' @param constraint [\code{cpConstraint *}]
#' @param maxForce [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpConstraintSetMaxForce <- function(constraint, maxForce) {
  stopifnot(inherits(constraint, "cpConstraint"))
  .Call("cpConstraintSetMaxForce_", constraint, maxForce)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Set rate at which joint error is corrected. Defaults to pow(1.0 - 0.1, 60.0)
#' meaning that it will correct 10\% of the error every 1/60th of a second.
#'
#' Set rate at which joint error is corrected. Defaults to pow(1.0 - 0.1, 60.0)
#' meaning that it will correct 10\% of the error every 1/60th of a second.
#'
#' C function prototype: \code{CP_EXPORT void cpConstraintSetErrorBias(cpConstraint *constraint, cpFloat errorBias);}
#'
#' @param constraint [\code{cpConstraint *}]
#' @param errorBias [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpConstraintSetErrorBias <- function(constraint, errorBias) {
  stopifnot(inherits(constraint, "cpConstraint"))
  .Call("cpConstraintSetErrorBias_", constraint, errorBias)
  invisible(NULL)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Set the maximum rate at which joint error is corrected. (defaults to INFINITY)
#'
#' Set the maximum rate at which joint error is corrected. (defaults to INFINITY)
#'
#' C function prototype: \code{CP_EXPORT void cpConstraintSetMaxBias(cpConstraint *constraint, cpFloat maxBias);}
#'
#' @param constraint [\code{cpConstraint *}]
#' @param maxBias [\code{cpFloat}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpConstraintSetMaxBias <- function(constraint, maxBias) {
  stopifnot(inherits(constraint, "cpConstraint"))
  .Call("cpConstraintSetMaxBias_", constraint, maxBias)
  invisible(NULL)
}
