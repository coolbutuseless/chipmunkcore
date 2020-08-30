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
// CP_EXPORT cpFloat cpMomentForCircle(cpFloat m, cpFloat r1, cpFloat r2, cpVect offset);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpMomentForCircle_(SEXP m_, SEXP r1_, SEXP r2_, SEXP offset_)  {
  cpFloat m = isInteger(m_) ? (cpFloat)INTEGER(m_)[0] : (cpFloat)REAL(m_)[0];
  cpFloat r1 = isInteger(r1_) ? (cpFloat)INTEGER(r1_)[0] : (cpFloat)REAL(r1_)[0];
  cpFloat r2 = isInteger(r2_) ? (cpFloat)INTEGER(r2_)[0] : (cpFloat)REAL(r2_)[0];
  cpVect *offset = TYPEOF(offset_) != EXTPTRSXP ? NULL : (cpVect *)R_ExternalPtrAddr(offset_);
  if (offset == NULL) error("'cpVect * offset' pointer is invalid/NULL");
  cpFloat result = cpMomentForCircle(m, r1, r2, *offset);
  SEXP result_ = PROTECT(ScalarReal(result));
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpFloat cpAreaForCircle(cpFloat r1, cpFloat r2);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpAreaForCircle_(SEXP r1_, SEXP r2_)  {
  cpFloat r1 = isInteger(r1_) ? (cpFloat)INTEGER(r1_)[0] : (cpFloat)REAL(r1_)[0];
  cpFloat r2 = isInteger(r2_) ? (cpFloat)INTEGER(r2_)[0] : (cpFloat)REAL(r2_)[0];
  cpFloat result = cpAreaForCircle(r1, r2);
  SEXP result_ = PROTECT(ScalarReal(result));
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpFloat cpMomentForSegment(cpFloat m, cpVect a, cpVect b, cpFloat radius);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpMomentForSegment_(SEXP m_, SEXP a_, SEXP b_, SEXP radius_)  {
  cpFloat m = isInteger(m_) ? (cpFloat)INTEGER(m_)[0] : (cpFloat)REAL(m_)[0];
  cpVect *a = TYPEOF(a_) != EXTPTRSXP ? NULL : (cpVect *)R_ExternalPtrAddr(a_);
  if (a == NULL) error("'cpVect * a' pointer is invalid/NULL");
  cpVect *b = TYPEOF(b_) != EXTPTRSXP ? NULL : (cpVect *)R_ExternalPtrAddr(b_);
  if (b == NULL) error("'cpVect * b' pointer is invalid/NULL");
  cpFloat radius = isInteger(radius_) ? (cpFloat)INTEGER(radius_)[0] : (cpFloat)REAL(radius_)[0];
  cpFloat result = cpMomentForSegment(m, *a, *b, radius);
  SEXP result_ = PROTECT(ScalarReal(result));
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpFloat cpAreaForSegment(cpVect a, cpVect b, cpFloat radius);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpAreaForSegment_(SEXP a_, SEXP b_, SEXP radius_)  {
  cpVect *a = TYPEOF(a_) != EXTPTRSXP ? NULL : (cpVect *)R_ExternalPtrAddr(a_);
  if (a == NULL) error("'cpVect * a' pointer is invalid/NULL");
  cpVect *b = TYPEOF(b_) != EXTPTRSXP ? NULL : (cpVect *)R_ExternalPtrAddr(b_);
  if (b == NULL) error("'cpVect * b' pointer is invalid/NULL");
  cpFloat radius = isInteger(radius_) ? (cpFloat)INTEGER(radius_)[0] : (cpFloat)REAL(radius_)[0];
  cpFloat result = cpAreaForSegment(*a, *b, radius);
  SEXP result_ = PROTECT(ScalarReal(result));
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpFloat cpMomentForPoly(cpFloat m, int count, const cpVect *verts, cpVect offset, cpFloat radius);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpMomentForPoly_(SEXP m_, SEXP count_, SEXP verts_, SEXP offset_, SEXP radius_)  {
  cpFloat m = isInteger(m_) ? (cpFloat)INTEGER(m_)[0] : (cpFloat)REAL(m_)[0];
  int count = isReal(count_) ? (int)REAL(count_)[0] : (int)INTEGER(count_)[0];
  cpVect *verts = TYPEOF(verts_) != EXTPTRSXP ? NULL : (cpVect *)R_ExternalPtrAddr(verts_);
  if (verts == NULL) error("'cpVect * verts' pointer is invalid/NULL");
  cpVect *offset = TYPEOF(offset_) != EXTPTRSXP ? NULL : (cpVect *)R_ExternalPtrAddr(offset_);
  if (offset == NULL) error("'cpVect * offset' pointer is invalid/NULL");
  cpFloat radius = isInteger(radius_) ? (cpFloat)INTEGER(radius_)[0] : (cpFloat)REAL(radius_)[0];
  cpFloat result = cpMomentForPoly(m, count, verts, *offset, radius);
  SEXP result_ = PROTECT(ScalarReal(result));
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpFloat cpAreaForPoly(const int count, const cpVect *verts, cpFloat radius);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpAreaForPoly_(SEXP count_, SEXP verts_, SEXP radius_)  {
  int count = isReal(count_) ? (int)REAL(count_)[0] : (int)INTEGER(count_)[0];
  cpVect *verts = TYPEOF(verts_) != EXTPTRSXP ? NULL : (cpVect *)R_ExternalPtrAddr(verts_);
  if (verts == NULL) error("'cpVect * verts' pointer is invalid/NULL");
  cpFloat radius = isInteger(radius_) ? (cpFloat)INTEGER(radius_)[0] : (cpFloat)REAL(radius_)[0];
  cpFloat result = cpAreaForPoly(count, verts, radius);
  SEXP result_ = PROTECT(ScalarReal(result));
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpVect cpCentroidForPoly(const int count, const cpVect *verts);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpCentroidForPoly_(SEXP count_, SEXP verts_)  {
  int count = isReal(count_) ? (int)REAL(count_)[0] : (int)INTEGER(count_)[0];
  cpVect *verts = TYPEOF(verts_) != EXTPTRSXP ? NULL : (cpVect *)R_ExternalPtrAddr(verts_);
  if (verts == NULL) error("'cpVect * verts' pointer is invalid/NULL");
  cpVect * result = cpVect_obj_to_ptr(cpCentroidForPoly(count, verts));
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpVect"));
  R_RegisterCFinalizer(result_, cpVect_finalizer);
  UNPROTECT(1);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT cpFloat cpMomentForBox(cpFloat m, cpFloat width, cpFloat height);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpMomentForBox_(SEXP m_, SEXP width_, SEXP height_)  {
  cpFloat m = isInteger(m_) ? (cpFloat)INTEGER(m_)[0] : (cpFloat)REAL(m_)[0];
  cpFloat width = isInteger(width_) ? (cpFloat)INTEGER(width_)[0] : (cpFloat)REAL(width_)[0];
  cpFloat height = isInteger(height_) ? (cpFloat)INTEGER(height_)[0] : (cpFloat)REAL(height_)[0];
  cpFloat result = cpMomentForBox(m, width, height);
  SEXP result_ = PROTECT(ScalarReal(result));
  UNPROTECT(1);
  return result_;
}
