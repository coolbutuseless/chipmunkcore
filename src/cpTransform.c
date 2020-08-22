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
// static inline cpTransform cpTransformNew(cpFloat a, cpFloat b, cpFloat c, cpFloat d, cpFloat tx, cpFloat ty)
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpTransformNew_(SEXP a_, SEXP b_, SEXP c_, SEXP d_, SEXP tx_, SEXP ty_)  {
  cpFloat a = isInteger(a_) ? (cpFloat)INTEGER(a_)[0] : (cpFloat)REAL(a_)[0];
  cpFloat b = isInteger(b_) ? (cpFloat)INTEGER(b_)[0] : (cpFloat)REAL(b_)[0];
  cpFloat c = isInteger(c_) ? (cpFloat)INTEGER(c_)[0] : (cpFloat)REAL(c_)[0];
  cpFloat d = isInteger(d_) ? (cpFloat)INTEGER(d_)[0] : (cpFloat)REAL(d_)[0];
  cpFloat tx = isInteger(tx_) ? (cpFloat)INTEGER(tx_)[0] : (cpFloat)REAL(tx_)[0];
  cpFloat ty = isInteger(ty_) ? (cpFloat)INTEGER(ty_)[0] : (cpFloat)REAL(ty_)[0];
  cpTransform * result = cpTransform_obj_to_ptr(cpTransformNew(a, b, c, d, tx, ty));
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpTransform"));
  R_RegisterCFinalizer(result_, cpTransform_finalizer);
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// static inline cpTransform cpTransformMult(cpTransform t1, cpTransform t2)
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpTransformMult_(SEXP t1_, SEXP t2_)  {
  cpTransform *t1 = isNull(t1_) ? NULL : (cpTransform *)R_ExternalPtrAddr(t1_);
  if (t1 == NULL) error("'cpTransform * t1' pointer is invalid/NULL");
  cpTransform *t2 = isNull(t2_) ? NULL : (cpTransform *)R_ExternalPtrAddr(t2_);
  if (t2 == NULL) error("'cpTransform * t2' pointer is invalid/NULL");
  cpTransform * result = cpTransform_obj_to_ptr(cpTransformMult(*t1, *t2));
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpTransform"));
  R_RegisterCFinalizer(result_, cpTransform_finalizer);
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// static inline cpTransform cpTransformTranslate(cpVect translate)
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpTransformTranslate_(SEXP translate_)  {
  cpVect *translate = isNull(translate_) ? NULL : (cpVect *)R_ExternalPtrAddr(translate_);
  if (translate == NULL) error("'cpVect * translate' pointer is invalid/NULL");
  cpTransform * result = cpTransform_obj_to_ptr(cpTransformTranslate(*translate));
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpTransform"));
  R_RegisterCFinalizer(result_, cpTransform_finalizer);
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// static inline cpTransform cpTransformScale(cpFloat scaleX, cpFloat scaleY)
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpTransformScale_(SEXP scaleX_, SEXP scaleY_)  {
  cpFloat scaleX = isInteger(scaleX_) ? (cpFloat)INTEGER(scaleX_)[0] : (cpFloat)REAL(scaleX_)[0];
  cpFloat scaleY = isInteger(scaleY_) ? (cpFloat)INTEGER(scaleY_)[0] : (cpFloat)REAL(scaleY_)[0];
  cpTransform * result = cpTransform_obj_to_ptr(cpTransformScale(scaleX, scaleY));
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpTransform"));
  R_RegisterCFinalizer(result_, cpTransform_finalizer);
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// static inline cpTransform cpTransformRotate(cpFloat radians)
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpTransformRotate_(SEXP radians_)  {
  cpFloat radians = isInteger(radians_) ? (cpFloat)INTEGER(radians_)[0] : (cpFloat)REAL(radians_)[0];
  cpTransform * result = cpTransform_obj_to_ptr(cpTransformRotate(radians));
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpTransform"));
  R_RegisterCFinalizer(result_, cpTransform_finalizer);
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// static inline cpTransform cpTransformRigid(cpVect translate, cpFloat radians)
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpTransformRigid_(SEXP translate_, SEXP radians_)  {
  cpVect *translate = isNull(translate_) ? NULL : (cpVect *)R_ExternalPtrAddr(translate_);
  if (translate == NULL) error("'cpVect * translate' pointer is invalid/NULL");
  cpFloat radians = isInteger(radians_) ? (cpFloat)INTEGER(radians_)[0] : (cpFloat)REAL(radians_)[0];
  cpTransform * result = cpTransform_obj_to_ptr(cpTransformRigid(*translate, radians));
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpTransform"));
  R_RegisterCFinalizer(result_, cpTransform_finalizer);
  UNPROTECT(1);
  return result_;
}
