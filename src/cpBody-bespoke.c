
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
// get a data.frame of information about each body in the given list (ll)
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SEXP get_all_body_info_(SEXP bodies_) {

  int n = length(bodies_);

  SEXP idx_    = PROTECT(allocVector(INTSXP , n));
  SEXP x_      = PROTECT(allocVector(REALSXP, n));
  SEXP y_      = PROTECT(allocVector(REALSXP, n));
  SEXP cx_     = PROTECT(allocVector(REALSXP, n));
  SEXP cy_     = PROTECT(allocVector(REALSXP, n));
  SEXP vx_     = PROTECT(allocVector(REALSXP, n));
  SEXP vy_     = PROTECT(allocVector(REALSXP, n));
  SEXP fx_     = PROTECT(allocVector(REALSXP, n));
  SEXP fy_     = PROTECT(allocVector(REALSXP, n));
  SEXP theta_  = PROTECT(allocVector(REALSXP, n));
  SEXP omega_  = PROTECT(allocVector(REALSXP, n));
  SEXP torque_ = PROTECT(allocVector(REALSXP, n));


  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // Allocate a data.frame
  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  SEXP df_ = PROTECT(allocVector(VECSXP, 12));

  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // Add columns to the data.frame
  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  SET_VECTOR_ELT(df_,  0, idx_);
  SET_VECTOR_ELT(df_,  1, x_);
  SET_VECTOR_ELT(df_,  2, y_);
  SET_VECTOR_ELT(df_,  3, cx_);
  SET_VECTOR_ELT(df_,  4, cy_);
  SET_VECTOR_ELT(df_,  5, vx_);
  SET_VECTOR_ELT(df_,  6, vy_);
  SET_VECTOR_ELT(df_,  7, fx_);
  SET_VECTOR_ELT(df_,  8, fy_);
  SET_VECTOR_ELT(df_,  9, theta_);
  SET_VECTOR_ELT(df_, 10, omega_);
  SET_VECTOR_ELT(df_, 11, torque_);


  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // Treat the VECSXP as a data.frame rather than a list
  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  SET_CLASS(df_, mkString("data.frame"));

  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // Set the names on the list.
  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  SEXP names = PROTECT(allocVector(STRSXP, 12));
  SET_STRING_ELT(names,  0, mkChar("idx"));
  SET_STRING_ELT(names,  1, mkChar("x"));
  SET_STRING_ELT(names,  2, mkChar("y"));
  SET_STRING_ELT(names,  3, mkChar("cx"));
  SET_STRING_ELT(names,  4, mkChar("cy"));
  SET_STRING_ELT(names,  5, mkChar("vx"));
  SET_STRING_ELT(names,  6, mkChar("vy"));
  SET_STRING_ELT(names,  7, mkChar("fx"));
  SET_STRING_ELT(names,  8, mkChar("fy"));
  SET_STRING_ELT(names,  9, mkChar("theta"));
  SET_STRING_ELT(names, 10, mkChar("omega"));
  SET_STRING_ELT(names, 11, mkChar("torgue"));
  setAttrib(df_, R_NamesSymbol, names);

  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // Set the row.names on the list.
  // Use the shortcut as used in .set_row_names() in R
  // i.e. set rownames to c(NA_integer, -len) and it will
  // take care of the rest. This is equivalent to rownames(x) <- NULL
  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  SEXP rownames = PROTECT(allocVector(INTSXP, 2));
  SET_INTEGER_ELT(rownames, 0, NA_INTEGER);
  SET_INTEGER_ELT(rownames, 1, -n);
  setAttrib(df_, R_RowNamesSymbol, rownames);




  UNPROTECT(15);
  return df_;
}
