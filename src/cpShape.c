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
// CP_EXPORT void cpShapeSetMass(cpShape *shape, cpFloat mass);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpShapeSetMass_(SEXP shape_, SEXP mass_)  {
  cpShape *shape = isNull(shape_) ? NULL : (cpShape *)R_ExternalPtrAddr(shape_);
  if (shape == NULL) error("'cpShape * shape' pointer is invalid/NULL");
  cpFloat mass = isInteger(mass_) ? (cpFloat)INTEGER(mass_)[0] : (cpFloat)REAL(mass_)[0];
  cpShapeSetMass(shape, mass);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpShapeSetDensity(cpShape *shape, cpFloat density);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpShapeSetDensity_(SEXP shape_, SEXP density_)  {
  cpShape *shape = isNull(shape_) ? NULL : (cpShape *)R_ExternalPtrAddr(shape_);
  if (shape == NULL) error("'cpShape * shape' pointer is invalid/NULL");
  cpFloat density = isInteger(density_) ? (cpFloat)INTEGER(density_)[0] : (cpFloat)REAL(density_)[0];
  cpShapeSetDensity(shape, density);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpFloat cpShapeGetMoment(cpShape *shape);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpShapeGetMoment_(SEXP shape_)  {
  cpShape *shape = isNull(shape_) ? NULL : (cpShape *)R_ExternalPtrAddr(shape_);
  if (shape == NULL) error("'cpShape * shape' pointer is invalid/NULL");
  cpFloat result = cpShapeGetMoment(shape);
  SEXP result_ = PROTECT(ScalarReal(result));
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpFloat cpShapeGetArea(cpShape *shape);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpShapeGetArea_(SEXP shape_)  {
  cpShape *shape = isNull(shape_) ? NULL : (cpShape *)R_ExternalPtrAddr(shape_);
  if (shape == NULL) error("'cpShape * shape' pointer is invalid/NULL");
  cpFloat result = cpShapeGetArea(shape);
  SEXP result_ = PROTECT(ScalarReal(result));
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpVect cpShapeGetCenterOfGravity(cpShape *shape);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpShapeGetCenterOfGravity_(SEXP shape_)  {
  cpShape *shape = isNull(shape_) ? NULL : (cpShape *)R_ExternalPtrAddr(shape_);
  if (shape == NULL) error("'cpShape * shape' pointer is invalid/NULL");
  cpVect * result = cpVect_obj_to_ptr(cpShapeGetCenterOfGravity(shape));
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpVect"));
  R_RegisterCFinalizer(result_, cpVect_finalizer);
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpShapeSetSensor(cpShape *shape, cpBool sensor);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpShapeSetSensor_(SEXP shape_, SEXP sensor_)  {
  cpShape *shape = isNull(shape_) ? NULL : (cpShape *)R_ExternalPtrAddr(shape_);
  if (shape == NULL) error("'cpShape * shape' pointer is invalid/NULL");
  cpBool sensor = isReal(sensor_) ? (cpBool)REAL(sensor_)[0] : (cpBool)INTEGER(sensor_)[0];
  cpShapeSetSensor(shape, sensor);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpShapeSetElasticity(cpShape *shape, cpFloat elasticity);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpShapeSetElasticity_(SEXP shape_, SEXP elasticity_)  {
  cpShape *shape = isNull(shape_) ? NULL : (cpShape *)R_ExternalPtrAddr(shape_);
  if (shape == NULL) error("'cpShape * shape' pointer is invalid/NULL");
  cpFloat elasticity = isInteger(elasticity_) ? (cpFloat)INTEGER(elasticity_)[0] : (cpFloat)REAL(elasticity_)[0];
  cpShapeSetElasticity(shape, elasticity);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpShapeSetFriction(cpShape *shape, cpFloat friction);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpShapeSetFriction_(SEXP shape_, SEXP friction_)  {
  cpShape *shape = isNull(shape_) ? NULL : (cpShape *)R_ExternalPtrAddr(shape_);
  if (shape == NULL) error("'cpShape * shape' pointer is invalid/NULL");
  cpFloat friction = isInteger(friction_) ? (cpFloat)INTEGER(friction_)[0] : (cpFloat)REAL(friction_)[0];
  cpShapeSetFriction(shape, friction);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpShape* cpCircleShapeNew(cpBody *body, cpFloat radius, cpVect offset);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpCircleShapeNew_(SEXP body_, SEXP radius_, SEXP offset_)  {
  cpBody *body = isNull(body_) ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpFloat radius = isInteger(radius_) ? (cpFloat)INTEGER(radius_)[0] : (cpFloat)REAL(radius_)[0];
  cpVect *offset = isNull(offset_) ? NULL : (cpVect *)R_ExternalPtrAddr(offset_);
  if (offset == NULL) error("'cpVect * offset' pointer is invalid/NULL");
  cpShape * result = cpCircleShapeNew(body, radius, *offset);
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpShape"));
  R_RegisterCFinalizer(result_, cpShape_finalizer);
  R_SetExternalPtrProtected(result_, body_); // Protect
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpShape* cpSegmentShapeNew(cpBody *body, cpVect a, cpVect b, cpFloat radius);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpSegmentShapeNew_(SEXP body_, SEXP a_, SEXP b_, SEXP radius_)  {
  cpBody *body = isNull(body_) ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
  if (body == NULL) error("'cpBody * body' pointer is invalid/NULL");
  cpVect *a = isNull(a_) ? NULL : (cpVect *)R_ExternalPtrAddr(a_);
  if (a == NULL) error("'cpVect * a' pointer is invalid/NULL");
  cpVect *b = isNull(b_) ? NULL : (cpVect *)R_ExternalPtrAddr(b_);
  if (b == NULL) error("'cpVect * b' pointer is invalid/NULL");
  cpFloat radius = isInteger(radius_) ? (cpFloat)INTEGER(radius_)[0] : (cpFloat)REAL(radius_)[0];
  cpShape * result = cpSegmentShapeNew(body, *a, *b, radius);
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpShape"));
  R_RegisterCFinalizer(result_, cpShape_finalizer);
  R_SetExternalPtrProtected(result_, body_); // Protect
  UNPROTECT(1);
  return result_;
}
