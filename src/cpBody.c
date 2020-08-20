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
// CP_EXPORT cpBody* cpBodyNew(cpFloat mass, cpFloat moment);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpBodyNew_(SEXP mass_, SEXP moment_)  {
  cpFloat mass = isInteger(mass_) ? (cpFloat)INTEGER(mass_)[0] : (cpFloat)REAL(mass_)[0];
  cpFloat moment = isInteger(moment_) ? (cpFloat)INTEGER(moment_)[0] : (cpFloat)REAL(moment_)[0];
  cpBody * result = cpBodyNew(mass, moment);
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpBody"));
  R_RegisterCFinalizer(result_, cpBody_finalizer);
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpVect cpBodyGetPosition(const cpBody *body);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpBodyGetPosition_(SEXP body_)  {
  cpBody *body = isNull(body_) ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpVect * result = cpVect_obj_to_ptr(cpBodyGetPosition(body));
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpVect"));
  R_RegisterCFinalizer(result_, cpVect_finalizer);
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpBodySetPosition(cpBody *body, cpVect pos);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpBodySetPosition_(SEXP body_, SEXP pos_)  {
  cpBody *body = isNull(body_) ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpVect *pos = isNull(pos_) ? NULL : (cpVect *)R_ExternalPtrAddr(pos_);
  if (pos == NULL) error("'cpVect * pos' pointer is invalid/NULL");
  cpBodySetPosition(body, *pos);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpVect cpBodyGetVelocity(const cpBody *body);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpBodyGetVelocity_(SEXP body_)  {
  cpBody *body = isNull(body_) ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpVect * result = cpVect_obj_to_ptr(cpBodyGetVelocity(body));
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpVect"));
  R_RegisterCFinalizer(result_, cpVect_finalizer);
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpBodySetVelocity(cpBody *body, cpVect velocity);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpBodySetVelocity_(SEXP body_, SEXP velocity_)  {
  cpBody *body = isNull(body_) ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpVect *velocity = isNull(velocity_) ? NULL : (cpVect *)R_ExternalPtrAddr(velocity_);
  if (velocity == NULL) error("'cpVect * velocity' pointer is invalid/NULL");
  cpBodySetVelocity(body, *velocity);
  return R_NilValue;
}
