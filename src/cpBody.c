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
  cpBody *body = TYPEOF(body_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
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
  cpBody *body = TYPEOF(body_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpVect *pos = TYPEOF(pos_) != EXTPTRSXP ? NULL : (cpVect *)R_ExternalPtrAddr(pos_);
  if (pos == NULL) error("'cpVect * pos' pointer is invalid/NULL");
  cpBodySetPosition(body, *pos);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpVect cpBodyGetCenterOfGravity(const cpBody *body);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpBodyGetCenterOfGravity_(SEXP body_)  {
  cpBody *body = TYPEOF(body_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpVect * result = cpVect_obj_to_ptr(cpBodyGetCenterOfGravity(body));
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpVect"));
  R_RegisterCFinalizer(result_, cpVect_finalizer);
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpVect cpBodyGetVelocity(const cpBody *body);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpBodyGetVelocity_(SEXP body_)  {
  cpBody *body = TYPEOF(body_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
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
  cpBody *body = TYPEOF(body_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpVect *velocity = TYPEOF(velocity_) != EXTPTRSXP ? NULL : (cpVect *)R_ExternalPtrAddr(velocity_);
  if (velocity == NULL) error("'cpVect * velocity' pointer is invalid/NULL");
  cpBodySetVelocity(body, *velocity);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpVect cpBodyGetForce(const cpBody *body);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpBodyGetForce_(SEXP body_)  {
  cpBody *body = TYPEOF(body_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpVect * result = cpVect_obj_to_ptr(cpBodyGetForce(body));
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpVect"));
  R_RegisterCFinalizer(result_, cpVect_finalizer);
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpFloat cpBodyGetAngle(const cpBody *body);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpBodyGetAngle_(SEXP body_)  {
  cpBody *body = TYPEOF(body_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpFloat result = cpBodyGetAngle(body);
  SEXP result_ = PROTECT(ScalarReal(result));
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpBodySetAngle(cpBody *body, cpFloat a);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpBodySetAngle_(SEXP body_, SEXP a_)  {
  cpBody *body = TYPEOF(body_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpFloat a = isInteger(a_) ? (cpFloat)INTEGER(a_)[0] : (cpFloat)REAL(a_)[0];
  cpBodySetAngle(body, a);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpFloat cpBodyGetAngularVelocity(const cpBody *body);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpBodyGetAngularVelocity_(SEXP body_)  {
  cpBody *body = TYPEOF(body_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpFloat result = cpBodyGetAngularVelocity(body);
  SEXP result_ = PROTECT(ScalarReal(result));
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpBodySetAngularVelocity(cpBody *body, cpFloat angularVelocity);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpBodySetAngularVelocity_(SEXP body_, SEXP angularVelocity_)  {
  cpBody *body = TYPEOF(body_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpFloat angularVelocity = isInteger(angularVelocity_) ? (cpFloat)INTEGER(angularVelocity_)[0] : (cpFloat)REAL(angularVelocity_)[0];
  cpBodySetAngularVelocity(body, angularVelocity);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpFloat cpBodyGetTorque(const cpBody *body);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpBodyGetTorque_(SEXP body_)  {
  cpBody *body = TYPEOF(body_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpFloat result = cpBodyGetTorque(body);
  SEXP result_ = PROTECT(ScalarReal(result));
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpBodySetTorque(cpBody *body, cpFloat torque);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpBodySetTorque_(SEXP body_, SEXP torque_)  {
  cpBody *body = TYPEOF(body_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpFloat torque = isInteger(torque_) ? (cpFloat)INTEGER(torque_)[0] : (cpFloat)REAL(torque_)[0];
  cpBodySetTorque(body, torque);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpVect cpBodyGetRotation(const cpBody *body);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpBodyGetRotation_(SEXP body_)  {
  cpBody *body = TYPEOF(body_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpVect * result = cpVect_obj_to_ptr(cpBodyGetRotation(body));
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpVect"));
  R_RegisterCFinalizer(result_, cpVect_finalizer);
  UNPROTECT(1);
  return result_;
}
