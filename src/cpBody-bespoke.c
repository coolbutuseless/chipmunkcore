
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
SEXP get_body_state_(SEXP bodies_) {

  int n = length(bodies_);

  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // Do an early check for validity
  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  for (int i = 0; i < n; i++) {
    SEXP body_ = VECTOR_ELT(bodies_, i);
    cpBody *body = TYPEOF(body_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
    if (body == NULL) error("'cpBody * body' pointer is invalid/NULL at position %i", i);
  }


  SEXP idx_    = PROTECT(allocVector(INTSXP , n));
  SEXP x_      = PROTECT(allocVector(REALSXP, n));
  SEXP y_      = PROTECT(allocVector(REALSXP, n));
  SEXP vx_     = PROTECT(allocVector(REALSXP, n));
  SEXP vy_     = PROTECT(allocVector(REALSXP, n));
  SEXP fx_     = PROTECT(allocVector(REALSXP, n));
  SEXP fy_     = PROTECT(allocVector(REALSXP, n));
  SEXP theta_  = PROTECT(allocVector(REALSXP, n));
  SEXP omega_  = PROTECT(allocVector(REALSXP, n));
  SEXP torque_ = PROTECT(allocVector(REALSXP, n));

  int *idx       = INTEGER(idx_);
  double *x      = REAL(x_);
  double *y      = REAL(y_);
  double *vx     = REAL(vx_);
  double *vy     = REAL(vy_);
  double *fx     = REAL(fx_);
  double *fy     = REAL(fy_);
  double *theta  = REAL(theta_);
  double *omega  = REAL(omega_);
  double *torque = REAL(torque_);

  for (int i = 0; i < n; i++) {
    SEXP body_ = VECTOR_ELT(bodies_, i);
    cpBody *body = TYPEOF(body_) != EXTPTRSXP ? NULL : (cpBody *)R_ExternalPtrAddr(body_);
    if (body == NULL) error("'cpBody * body' pointer is invalid/NULL at position %i", i);

    idx[i] = i + 1;

    // Position
    cpVect pos = cpBodyGetPosition(body);
    x[i] = pos.x;
    y[i] = pos.y;

    // Velocity
    cpVect vel = cpBodyGetVelocity(body);
    vx[i] = vel.x;
    vy[i] = vel.y;

    // Force
    cpVect F = cpBodyGetForce(body);
    fx[i] = F.x;
    fy[i] = F.y;

    // theta
    theta [i] = cpBodyGetAngle(body);
    omega [i] = cpBodyGetAngularVelocity(body);
    torque[i] = cpBodyGetTorque(body);
  }




  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // Allocate a data.frame
  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  SEXP df_ = PROTECT(allocVector(VECSXP, 10));

  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // Add columns to the data.frame
  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  SET_VECTOR_ELT(df_,  0, idx_);
  SET_VECTOR_ELT(df_,  1, x_);
  SET_VECTOR_ELT(df_,  2, y_);
  SET_VECTOR_ELT(df_,  3, vx_);
  SET_VECTOR_ELT(df_,  4, vy_);
  SET_VECTOR_ELT(df_,  5, fx_);
  SET_VECTOR_ELT(df_,  6, fy_);
  SET_VECTOR_ELT(df_,  7, theta_);
  SET_VECTOR_ELT(df_,  8, omega_);
  SET_VECTOR_ELT(df_,  9, torque_);


  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // Treat the VECSXP as a data.frame rather than a list
  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  SET_CLASS(df_, mkString("data.frame"));

  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // Set the names on the list.
  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  SEXP names = PROTECT(allocVector(STRSXP, 10));
  SET_STRING_ELT(names,  0, mkChar("idx"));
  SET_STRING_ELT(names,  1, mkChar("x"));
  SET_STRING_ELT(names,  2, mkChar("y"));
  SET_STRING_ELT(names,  3, mkChar("vx"));
  SET_STRING_ELT(names,  4, mkChar("vy"));
  SET_STRING_ELT(names,  5, mkChar("fx"));
  SET_STRING_ELT(names,  6, mkChar("fy"));
  SET_STRING_ELT(names,  7, mkChar("theta"));
  SET_STRING_ELT(names,  8, mkChar("omega"));
  SET_STRING_ELT(names,  9, mkChar("torque"));
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




  UNPROTECT(13);
  return df_;
}
