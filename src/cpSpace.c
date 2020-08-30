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
// CP_EXPORT cpSpace* cpSpaceNew(void);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceNew_(void)  {
  cpSpace * result = cpSpaceNew();
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpSpace"));
  R_RegisterCFinalizer(result_, cpSpace_finalizer);
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpSpaceSetIterations(cpSpace *space, int iterations);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceSetIterations_(SEXP space_, SEXP iterations_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  int iterations = isReal(iterations_) ? (int)REAL(iterations_)[0] : (int)INTEGER(iterations_)[0];
  cpSpaceSetIterations(space, iterations);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpSpaceSetGravity(cpSpace *space, cpVect gravity);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceSetGravity_(SEXP space_, SEXP gravity_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpVect *gravity = TYPEOF(gravity_) != EXTPTRSXP ? NULL : (cpVect *)R_ExternalPtrAddr(gravity_);
  if (gravity == NULL) error("'cpVect * gravity' pointer is invalid/NULL");
  cpSpaceSetGravity(space, *gravity);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpSpaceSetDamping(cpSpace *space, cpFloat damping);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceSetDamping_(SEXP space_, SEXP damping_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpFloat damping = isInteger(damping_) ? (cpFloat)INTEGER(damping_)[0] : (cpFloat)REAL(damping_)[0];
  cpSpaceSetDamping(space, damping);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpSpaceSetIdleSpeedThreshold(cpSpace *space, cpFloat idleSpeedThreshold);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceSetIdleSpeedThreshold_(SEXP space_, SEXP idleSpeedThreshold_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpFloat idleSpeedThreshold = isInteger(idleSpeedThreshold_) ? (cpFloat)INTEGER(idleSpeedThreshold_)[0] : (cpFloat)REAL(idleSpeedThreshold_)[0];
  cpSpaceSetIdleSpeedThreshold(space, idleSpeedThreshold);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpSpaceSetSleepTimeThreshold(cpSpace *space, cpFloat sleepTimeThreshold);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceSetSleepTimeThreshold_(SEXP space_, SEXP sleepTimeThreshold_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpFloat sleepTimeThreshold = isInteger(sleepTimeThreshold_) ? (cpFloat)INTEGER(sleepTimeThreshold_)[0] : (cpFloat)REAL(sleepTimeThreshold_)[0];
  cpSpaceSetSleepTimeThreshold(space, sleepTimeThreshold);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpSpaceSetCollisionSlop(cpSpace *space, cpFloat collisionSlop);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceSetCollisionSlop_(SEXP space_, SEXP collisionSlop_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpFloat collisionSlop = isInteger(collisionSlop_) ? (cpFloat)INTEGER(collisionSlop_)[0] : (cpFloat)REAL(collisionSlop_)[0];
  cpSpaceSetCollisionSlop(space, collisionSlop);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpSpaceSetCollisionBias(cpSpace *space, cpFloat collisionBias);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceSetCollisionBias_(SEXP space_, SEXP collisionBias_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpFloat collisionBias = isInteger(collisionBias_) ? (cpFloat)INTEGER(collisionBias_)[0] : (cpFloat)REAL(collisionBias_)[0];
  cpSpaceSetCollisionBias(space, collisionBias);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpBody* cpSpaceGetStaticBody(const cpSpace *space);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceGetStaticBody_(SEXP space_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpBody * result = cpSpaceGetStaticBody(space);
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpBody"));
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpFloat cpSpaceGetCurrentTimeStep(const cpSpace *space);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceGetCurrentTimeStep_(SEXP space_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpFloat result = cpSpaceGetCurrentTimeStep(space);
  SEXP result_ = PROTECT(ScalarReal(result));
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpSpaceAddShape(cpSpace *space, cpShape *shape);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceAddShape_(SEXP space_, SEXP shape_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpShape *shape = TYPEOF(shape_) != EXTPTRSXP ? NULL : (cpShape *)R_ExternalPtrAddr(shape_);
  if (shape == NULL) error("'cpShape * shape' pointer is invalid/NULL");
  cpSpaceAddShape(space, shape);
  R_SetExternalPtrProtected(shape_, space_);  // Protect
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpSpaceAddBody(cpSpace *space, cpBody *body);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceAddBody_(SEXP space_, SEXP body_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpBody *body = TYPEOF(body_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpSpaceAddBody(space, body);
  R_SetExternalPtrProtected(body_, space_);  // Protect
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpSpaceAddConstraint(cpSpace *space, cpConstraint *constraint);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceAddConstraint_(SEXP space_, SEXP constraint_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpConstraint *constraint = TYPEOF(constraint_) != EXTPTRSXP ? NULL : (cpConstraint *)R_ExternalPtrAddr(constraint_);
  if (constraint == NULL) error("'cpConstraint * constraint' pointer is invalid/NULL");
  cpSpaceAddConstraint(space, constraint);
  R_SetExternalPtrProtected(constraint_, space_);  // Protect
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpSpaceRemoveShape(cpSpace *space, cpShape *shape);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceRemoveShape_(SEXP space_, SEXP shape_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpShape *shape = TYPEOF(shape_) != EXTPTRSXP ? NULL : (cpShape *)R_ExternalPtrAddr(shape_);
  if (shape == NULL) error("'cpShape * shape' pointer is invalid/NULL");
  cpSpaceRemoveShape(space, shape);
  R_SetExternalPtrProtected(shape_, R_NilValue);  // unprotect
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpSpaceRemoveBody(cpSpace *space, cpBody *body);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceRemoveBody_(SEXP space_, SEXP body_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpBody *body = TYPEOF(body_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpSpaceRemoveBody(space, body);
  R_SetExternalPtrProtected(body_, R_NilValue);  // unprotect
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpSpaceRemoveConstraint(cpSpace *space, cpConstraint *constraint);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceRemoveConstraint_(SEXP space_, SEXP constraint_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpConstraint *constraint = TYPEOF(constraint_) != EXTPTRSXP ? NULL : (cpConstraint *)R_ExternalPtrAddr(constraint_);
  if (constraint == NULL) error("'cpConstraint * constraint' pointer is invalid/NULL");
  cpSpaceRemoveConstraint(space, constraint);
  R_SetExternalPtrProtected(constraint_, R_NilValue);  // unprotect
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpBool cpSpaceContainsShape(cpSpace *space, cpShape *shape);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceContainsShape_(SEXP space_, SEXP shape_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpShape *shape = TYPEOF(shape_) != EXTPTRSXP ? NULL : (cpShape *)R_ExternalPtrAddr(shape_);
  if (shape == NULL) error("'cpShape * shape' pointer is invalid/NULL");
  cpBool result = cpSpaceContainsShape(space, shape);
  SEXP result_ = PROTECT(ScalarInteger(result));
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpBool cpSpaceContainsBody(cpSpace *space, cpBody *body);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceContainsBody_(SEXP space_, SEXP body_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpBody *body = TYPEOF(body_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpBool result = cpSpaceContainsBody(space, body);
  SEXP result_ = PROTECT(ScalarInteger(result));
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpBool cpSpaceContainsConstraint(cpSpace *space, cpConstraint *constraint);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceContainsConstraint_(SEXP space_, SEXP constraint_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpConstraint *constraint = TYPEOF(constraint_) != EXTPTRSXP ? NULL : (cpConstraint *)R_ExternalPtrAddr(constraint_);
  if (constraint == NULL) error("'cpConstraint * constraint' pointer is invalid/NULL");
  cpBool result = cpSpaceContainsConstraint(space, constraint);
  SEXP result_ = PROTECT(ScalarInteger(result));
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpSpaceReindexStatic(cpSpace *space);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceReindexStatic_(SEXP space_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpSpaceReindexStatic(space);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpSpaceReindexShape(cpSpace *space, cpShape *shape);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceReindexShape_(SEXP space_, SEXP shape_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpShape *shape = TYPEOF(shape_) != EXTPTRSXP ? NULL : (cpShape *)R_ExternalPtrAddr(shape_);
  if (shape == NULL) error("'cpShape * shape' pointer is invalid/NULL");
  cpSpaceReindexShape(space, shape);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpSpaceReindexShapesForBody(cpSpace *space, cpBody *body);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceReindexShapesForBody_(SEXP space_, SEXP body_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpBody *body = TYPEOF(body_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpSpaceReindexShapesForBody(space, body);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpSpaceStep(cpSpace *space, cpFloat dt);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSpaceStep_(SEXP space_, SEXP dt_)  {
  cpSpace *space = TYPEOF(space_) != EXTPTRSXP ? NULL : (cpSpace *)R_ExternalPtrAddr(space_);
  if (space == NULL) error("'cpSpace * space' pointer is invalid/NULL");
  cpFloat dt = isInteger(dt_) ? (cpFloat)INTEGER(dt_)[0] : (cpFloat)REAL(dt_)[0];
  cpSpaceStep(space, dt);
  return R_NilValue;
}
