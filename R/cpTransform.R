# Auto-generated

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Construct a new transform matrix. (a, b) is the x basis vector. (c, d) is the y
#' basis vector. (tx, ty) is the translation.
#'
#' Construct a new transform matrix. (a, b) is the x basis vector. (c, d) is the y
#' basis vector. (tx, ty) is the translation.
#'
#' C function prototype: \code{static inline cpTransform cpTransformNew(cpFloat a, cpFloat b, cpFloat c, cpFloat d, cpFloat tx, cpFloat ty)}
#'
#' @param a [\code{cpFloat}]
#' @param b [\code{cpFloat}]
#' @param c [\code{cpFloat}]
#' @param d [\code{cpFloat}]
#' @param tx [\code{cpFloat}]
#' @param ty [\code{cpFloat}]
#'
#' @return [\code{cpTransform *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpTransformNew <- function(a, b, c, d, tx, ty) {
  .Call("cpTransformNew_", a, b, c, d, tx, ty)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Multiply two transformation matrices.
#'
#' Multiply two transformation matrices.
#'
#' C function prototype: \code{static inline cpTransform cpTransformMult(cpTransform t1, cpTransform t2)}
#'
#' @param t1 [\code{cpTransform *}]
#' @param t2 [\code{cpTransform *}]
#'
#' @return [\code{cpTransform *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpTransformMult <- function(t1, t2) {
  stopifnot(inherits(t1, "cpTransform"))
  stopifnot(inherits(t2, "cpTransform"))
  .Call("cpTransformMult_", t1, t2)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Create a transation matrix.
#'
#' Create a transation matrix.
#'
#' C function prototype: \code{static inline cpTransform cpTransformTranslate(cpVect translate)}
#'
#' @param translate [\code{cpVect *}]
#'
#' @return [\code{cpTransform *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpTransformTranslate <- function(translate) {
  stopifnot(inherits(translate, "cpVect"))
  .Call("cpTransformTranslate_", translate)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Create a scale matrix.
#'
#' Create a scale matrix.
#'
#' C function prototype: \code{static inline cpTransform cpTransformScale(cpFloat scaleX, cpFloat scaleY)}
#'
#' @param scaleX [\code{cpFloat}]
#' @param scaleY [\code{cpFloat}]
#'
#' @return [\code{cpTransform *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpTransformScale <- function(scaleX, scaleY) {
  .Call("cpTransformScale_", scaleX, scaleY)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Create a rotation matrix.
#'
#' Create a rotation matrix.
#'
#' C function prototype: \code{static inline cpTransform cpTransformRotate(cpFloat radians)}
#'
#' @param radians [\code{cpFloat}]
#'
#' @return [\code{cpTransform *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpTransformRotate <- function(radians) {
  .Call("cpTransformRotate_", radians)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Create a rigid transformation matrix. (transation + rotation)
#'
#' Create a rigid transformation matrix. (transation + rotation)
#'
#' C function prototype: \code{static inline cpTransform cpTransformRigid(cpVect translate, cpFloat radians)}
#'
#' @param translate [\code{cpVect *}]
#' @param radians [\code{cpFloat}]
#'
#' @return [\code{cpTransform *}]
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpTransformRigid <- function(translate, radians) {
  stopifnot(inherits(translate, "cpVect"))
  .Call("cpTransformRigid_", translate, radians)
}
