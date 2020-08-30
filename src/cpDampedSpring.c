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
// CP_EXPORT cpConstraint* cpDampedSpringNew(cpBody *a, cpBody *b, cpVect anchorA, cpVect anchorB, cpFloat restLength, cpFloat stiffness, cpFloat damping);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpDampedSpringNew_(SEXP a_, SEXP b_, SEXP anchorA_, SEXP anchorB_, SEXP restLength_, SEXP stiffness_, SEXP damping_)  {
  cpBody *a = TYPEOF(a_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(a_);
  if (a == NULL) error("'cpBody * a' pointer is invalid/NULL");
  cpBody *b = TYPEOF(b_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(b_);
  if (b == NULL) error("'cpBody * b' pointer is invalid/NULL");
  cpVect *anchorA = TYPEOF(anchorA_) != EXTPTRSXP ? NULL : (cpVect *)R_ExternalPtrAddr(anchorA_);
  if (anchorA == NULL) error("'cpVect * anchorA' pointer is invalid/NULL");
  cpVect *anchorB = TYPEOF(anchorB_) != EXTPTRSXP ? NULL : (cpVect *)R_ExternalPtrAddr(anchorB_);
  if (anchorB == NULL) error("'cpVect * anchorB' pointer is invalid/NULL");
  cpFloat restLength = isInteger(restLength_) ? (cpFloat)INTEGER(restLength_)[0] : (cpFloat)REAL(restLength_)[0];
  cpFloat stiffness = isInteger(stiffness_) ? (cpFloat)INTEGER(stiffness_)[0] : (cpFloat)REAL(stiffness_)[0];
  cpFloat damping = isInteger(damping_) ? (cpFloat)INTEGER(damping_)[0] : (cpFloat)REAL(damping_)[0];
  cpConstraint * result = cpDampedSpringNew(a, b, *anchorA, *anchorB, restLength, stiffness, damping);
  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpConstraint"));
  R_RegisterCFinalizer(result_, cpConstraint_finalizer);
  SEXP list_ = PROTECT(NEW_LIST(2));
  SET_VECTOR_ELT(list_, 0, a_);
  SET_VECTOR_ELT(list_, 1, b_);
  R_SetExternalPtrProtected(result_, list_); // Protect
  UNPROTECT(2);
  return result_;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpDampedSpringSetRestLength(cpConstraint *constraint, cpFloat restLength);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpDampedSpringSetRestLength_(SEXP constraint_, SEXP restLength_)  {
  cpConstraint *constraint = TYPEOF(constraint_) != EXTPTRSXP ? NULL : (cpConstraint *)R_ExternalPtrAddr(constraint_);
  if (constraint == NULL) error("'cpConstraint * constraint' pointer is invalid/NULL");
  cpFloat restLength = isInteger(restLength_) ? (cpFloat)INTEGER(restLength_)[0] : (cpFloat)REAL(restLength_)[0];
  cpDampedSpringSetRestLength(constraint, restLength);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpDampedSpringSetStiffness(cpConstraint *constraint, cpFloat stiffness);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpDampedSpringSetStiffness_(SEXP constraint_, SEXP stiffness_)  {
  cpConstraint *constraint = TYPEOF(constraint_) != EXTPTRSXP ? NULL : (cpConstraint *)R_ExternalPtrAddr(constraint_);
  if (constraint == NULL) error("'cpConstraint * constraint' pointer is invalid/NULL");
  cpFloat stiffness = isInteger(stiffness_) ? (cpFloat)INTEGER(stiffness_)[0] : (cpFloat)REAL(stiffness_)[0];
  cpDampedSpringSetStiffness(constraint, stiffness);
  return R_NilValue;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CP_EXPORT void cpDampedSpringSetDamping(cpConstraint *constraint, cpFloat damping);
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpDampedSpringSetDamping_(SEXP constraint_, SEXP damping_)  {
  cpConstraint *constraint = TYPEOF(constraint_) != EXTPTRSXP ? NULL : (cpConstraint *)R_ExternalPtrAddr(constraint_);
  if (constraint == NULL) error("'cpConstraint * constraint' pointer is invalid/NULL");
  cpFloat damping = isInteger(damping_) ? (cpFloat)INTEGER(damping_)[0] : (cpFloat)REAL(damping_)[0];
  cpDampedSpringSetDamping(constraint, damping);
  return R_NilValue;
}
