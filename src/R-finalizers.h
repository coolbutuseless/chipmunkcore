

#include <R.h>
#include <Rinternals.h>
#include <Rdefines.h>

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void placebo_finalizer(SEXP ptr_);
void generic_finalizer(SEXP ptr_);

void cpSpace_finalizer(SEXP ptr_);
void cpShape_finalizer(SEXP ptr_);
void cpBody_finalizer(SEXP ptr_);
void cpVect_finalizer(SEXP ptr_);
