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
// CP_EXPORT void cpConstraintSetMaxForce(cpConstraint *constraint, cpFloat maxForce);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpConstraintSetMaxForce_(SEXP constraint_, SEXP maxForce_)  {
  cpConstraint *constraint = TYPEOF(constraint_) != EXTPTRSXP ? NULL : (cpConstraint *)R_ExternalPtrAddr(constraint_);
  if (constraint == NULL) error("'cpConstraint * constraint' pointer is invalid/NULL");
  cpFloat maxForce = isInteger(maxForce_) ? (cpFloat)INTEGER(maxForce_)[0] : (cpFloat)REAL(maxForce_)[0];
  cpConstraintSetMaxForce(constraint, maxForce);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpConstraintSetErrorBias(cpConstraint *constraint, cpFloat errorBias);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpConstraintSetErrorBias_(SEXP constraint_, SEXP errorBias_)  {
  cpConstraint *constraint = TYPEOF(constraint_) != EXTPTRSXP ? NULL : (cpConstraint *)R_ExternalPtrAddr(constraint_);
  if (constraint == NULL) error("'cpConstraint * constraint' pointer is invalid/NULL");
  cpFloat errorBias = isInteger(errorBias_) ? (cpFloat)INTEGER(errorBias_)[0] : (cpFloat)REAL(errorBias_)[0];
  cpConstraintSetErrorBias(constraint, errorBias);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpConstraintSetMaxBias(cpConstraint *constraint, cpFloat maxBias);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpConstraintSetMaxBias_(SEXP constraint_, SEXP maxBias_)  {
  cpConstraint *constraint = TYPEOF(constraint_) != EXTPTRSXP ? NULL : (cpConstraint *)R_ExternalPtrAddr(constraint_);
  if (constraint == NULL) error("'cpConstraint * constraint' pointer is invalid/NULL");
  cpFloat maxBias = isInteger(maxBias_) ? (cpFloat)INTEGER(maxBias_)[0] : (cpFloat)REAL(maxBias_)[0];
  cpConstraintSetMaxBias(constraint, maxBias);
  return R_NilValue;
}
