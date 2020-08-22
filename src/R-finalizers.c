


#include <R.h>
#include <Rinternals.h>
#include <Rdefines.h>
#include <chipmunk/chipmunk.h>

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>





//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Placebo finalizer with a correct signature
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
void placebo_finalizer(SEXP ptr_) {
  // Clear the pointer only. do nothing with the memory.
  // This assumes something else is going to handle the actual memory
  // that was pointed to
  R_ClearExternalPtr(ptr_);
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// generic finalizer for objects which are malloced.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
void generic_finalizer(SEXP ptr_) {
  //Rprintf("generic_finalizer()\n");
  // Rprintf("f");
  void *ptr = (void *)R_ExternalPtrAddr(ptr_);
  if (ptr != NULL) {
    free(ptr);
  }
  R_ClearExternalPtr(ptr_);
}



//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Used internally when within R the 'externalpointer' object gets
// garbage collected
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
void cpSpace_finalizer(SEXP ptr_) {
  // Rprintf("cpSpace_finalizer()\n");
  cpSpace *ptr = (cpSpace *)R_ExternalPtrAddr(ptr_);
  if (ptr != NULL) {
    cpSpaceFree(ptr);
  }
  R_ClearExternalPtr(ptr_);
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Used internally when within R the 'externalpointer' object gets
// garbage collected
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
void cpShape_finalizer(SEXP ptr_) {
  cpShape *ptr = (cpShape *)R_ExternalPtrAddr(ptr_);

  // Before freeing a shape, remove it from space it's attached to
  cpSpace *space = cpShapeGetSpace(ptr);
  if (space != NULL) {
    //Rprintf("s");
    cpSpaceRemoveShape(space, ptr);
  }

  //cpBody *body = cpShapeGetBody(ptr);
  //if (body != NULL) {
  //  Rprintf("Removing shape from body before finalizing");
  //  cpBodyRemoveShape(body, ptr);
  //}

  if (ptr != NULL) {
    cpShapeFree(ptr);
  }
  R_ClearExternalPtr(ptr_);
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Used internally when within R the 'externalpointer' object gets
// garbage collected
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
void cpBody_finalizer(SEXP ptr_) {
  cpBody *ptr = (cpBody *)R_ExternalPtrAddr(ptr_);

  // Before freeing a body, remove it from space it's attached to
  cpSpace *space = cpBodyGetSpace(ptr);
  if (space != NULL) {
    //Rprintf("b");
    cpSpaceRemoveBody(space, ptr);
  }

  if (ptr != NULL) {
    cpBodyFree(ptr);
  }
  R_ClearExternalPtr(ptr_);
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Used internally when within R the 'externalpointer' object gets
// garbage collected
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
void cpVect_finalizer(SEXP ptr_) {
  cpVect *ptr = (cpVect *)R_ExternalPtrAddr(ptr_);
  if (ptr != NULL) {
    free(ptr);
  }
  R_ClearExternalPtr(ptr_);
}






