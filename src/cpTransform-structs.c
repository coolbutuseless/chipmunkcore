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
// Unpack a cpVect into a list
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP cpTransform_to_list_(SEXP ptr_) {
  cpTransform *ptr = isNull(ptr_) ? NULL : (cpTransform *)R_ExternalPtrAddr(ptr_);
  if (ptr == NULL) error("cpTransform pointer is invalid/NULL");
  // Final list
  SEXP result_ = PROTECT(NEW_LIST(6));
  SET_VECTOR_ELT(result_, 0, ScalarReal(ptr->a));
  SET_VECTOR_ELT(result_, 1, ScalarReal(ptr->b));
  SET_VECTOR_ELT(result_, 2, ScalarReal(ptr->c));
  SET_VECTOR_ELT(result_, 3, ScalarReal(ptr->d));
  SET_VECTOR_ELT(result_, 4, ScalarReal(ptr->tx));
  SET_VECTOR_ELT(result_, 5, ScalarReal(ptr->ty));

  // Set the names on the list.
  SEXP names = PROTECT(allocVector(STRSXP, 6));
  SET_STRING_ELT(names, 0, mkChar("a"));
  SET_STRING_ELT(names, 1, mkChar("b"));
  SET_STRING_ELT(names, 2, mkChar("c"));
  SET_STRING_ELT(names, 3, mkChar("d"));
  SET_STRING_ELT(names, 4, mkChar("tx"));
  SET_STRING_ELT(names, 5, mkChar("ty"));
  setAttrib(result_, R_NamesSymbol, names);

  UNPROTECT(2);
  return result_;
}




//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Convert a cpVect object into a pointer
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cpTransform * cpTransform_obj_to_ptr(cpTransform obj) {

  cpTransform * result = (cpTransform *)calloc(1, sizeof(cpTransform));

  result->a  = obj.a;
  result->b  = obj.b;
  result->c  = obj.c;
  result->d  = obj.d;
  result->tx = obj.tx;
  result->ty = obj.ty;

  return result;
}





















