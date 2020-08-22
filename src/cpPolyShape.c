// Auto-generated

#include <R.h>
#include <Rinternals.h>
#include <Rdefines.h>
#include <chipmunk/chipmunk.h>

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "aaa.h"
#include "R-finalizers.h"


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpShape* cpPolyShapeNew(cpBody *body, int count, const cpVect *verts, cpTransform transform, cpFloat radius);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpPolyShapeNew_(SEXP body_, SEXP count_, SEXP verts_, SEXP transform_, SEXP radius_)  {
  cpBody *body = isNull(body_) ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  int count = isReal(count_) ? (int)REAL(count_)[0] : (int)INTEGER(count_)[0];
  cpVect *verts = isNull(verts_) ? NULL : (cpVect *)R_ExternalPtrAddr(verts_);
  if (verts == NULL) error("'cpVect * verts' pointer is invalid/NULL");
  cpTransform *transform = isNull(transform_) ? NULL : (cpTransform *)R_ExternalPtrAddr(transform_);
  if (transform == NULL) error("'cpTransform * transform' pointer is invalid/NULL");
  cpFloat radius = isInteger(radius_) ? (cpFloat)INTEGER(radius_)[0] : (cpFloat)REAL(radius_)[0];
  cpShape * result = cpPolyShapeNew(body, count, verts, *transform, radius);
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpShape"));
  R_RegisterCFinalizer(result_, cpShape_finalizer);
  R_SetExternalPtrProtected(result_, body_); // Protect
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpShape* cpBoxShapeNew(cpBody *body, cpFloat width, cpFloat height, cpFloat radius);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpBoxShapeNew_(SEXP body_, SEXP width_, SEXP height_, SEXP radius_)  {
  cpBody *body = isNull(body_) ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpFloat width = isInteger(width_) ? (cpFloat)INTEGER(width_)[0] : (cpFloat)REAL(width_)[0];
  cpFloat height = isInteger(height_) ? (cpFloat)INTEGER(height_)[0] : (cpFloat)REAL(height_)[0];
  cpFloat radius = isInteger(radius_) ? (cpFloat)INTEGER(radius_)[0] : (cpFloat)REAL(radius_)[0];
  cpShape * result = cpBoxShapeNew(body, width, height, radius);
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpShape"));
  R_RegisterCFinalizer(result_, cpShape_finalizer);
  R_SetExternalPtrProtected(result_, body_); // Protect
  UNPROTECT(1);
  return result_;
}
