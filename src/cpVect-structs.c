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
// Create a cpVect
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpVect_(SEXP x_, SEXP y_) {

  if ( (length(x_) != length(y_)) || length(x_) == 0 ) {
    error("cpVect(): x, y must be same length");
  }

  int n = length(x_);
  cpVect * result = (cpVect *)calloc(n, sizeof(cpVect));

  double *xp = REAL(x_);
  double *yp = REAL(y_);

  for (int i = 0; i < n; i++) {
    result[i].x = xp[i];
    result[i].y = yp[i];
  }

  SEXP result_ = PROTECT(R_MakeExternalPtr(result, R_NilValue, R_NilValue));
  SET_CLASS(result_, mkString("cpVect"));
  R_RegisterCFinalizer(result_, generic_finalizer);
  UNPROTECT(1);
  return result_;
}



//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Unpack a cpVect into a list
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpVect_to_list_(SEXP ptr_) {
  cpVect *ptr = isNull(ptr_) ? NULL : (cpVect *)R_ExternalPtrAddr(ptr_);
  if (ptr == NULL) error("cpVect pointer is invalid/NULL");
  // Final list
  SEXP result_ = PROTECT(NEW_LIST(2));
  SET_VECTOR_ELT(result_, 0, ScalarReal(ptr->x));
  SET_VECTOR_ELT(result_, 1, ScalarReal(ptr->y));

  // Set the names on the list.
  SEXP names = PROTECT(allocVector(STRSXP, 2));
  SET_STRING_ELT(names, 0, mkChar("x"));
  SET_STRING_ELT(names, 1, mkChar("y"));
  setAttrib(result_, R_NamesSymbol, names);

  UNPROTECT(2);
  return result_;
}




//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Convert a cpVect object into a pointer
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpVect * cpVect_obj_to_ptr(cpVect obj) {

  cpVect * result = (cpVect *)calloc(1, sizeof(cpVect));

  result->x = obj.x;
  result->y = obj.y;

  return result;
}





















