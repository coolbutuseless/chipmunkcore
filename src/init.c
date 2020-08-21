
// #define R_NO_REMAP
#include <R.h>
#include <Rinternals.h>


extern SEXP cpVect_();
extern SEXP cpVect_to_list_();



// ---- begin auto-generated externs ----
// chipmunk
extern SEXP cpMomentForCircle_();
extern SEXP cpAreaForCircle_();
extern SEXP cpMomentForSegment_();
extern SEXP cpAreaForSegment_();
extern SEXP cpMomentForPoly_();
extern SEXP cpAreaForPoly_();
extern SEXP cpCentroidForPoly_();
extern SEXP cpMomentForBox_();

// cpBody
extern SEXP cpBodyNew_();
extern SEXP cpBodyGetPosition_();
extern SEXP cpBodySetPosition_();
extern SEXP cpBodyGetVelocity_();
extern SEXP cpBodySetVelocity_();

// cpShape
extern SEXP cpShapeSetFriction_();
extern SEXP cpCircleShapeNew_();
extern SEXP cpSegmentShapeNew_();

// cpSpace
extern SEXP cpSpaceNew_();
extern SEXP cpSpaceSetIterations_();
extern SEXP cpSpaceSetGravity_();
extern SEXP cpSpaceSetDamping_();
extern SEXP cpSpaceSetIdleSpeedThreshold_();
extern SEXP cpSpaceSetSleepTimeThreshold_();
extern SEXP cpSpaceSetCollisionSlop_();
extern SEXP cpSpaceSetCollisionBias_();
extern SEXP cpSpaceGetStaticBody_();
extern SEXP cpSpaceGetCurrentTimeStep_();
extern SEXP cpSpaceAddShape_();
extern SEXP cpSpaceAddBody_();
extern SEXP cpSpaceAddConstraint_();
extern SEXP cpSpaceRemoveShape_();
extern SEXP cpSpaceRemoveBody_();
extern SEXP cpSpaceContainsShape_();
extern SEXP cpSpaceContainsBody_();
extern SEXP cpSpaceReindexStatic_();
extern SEXP cpSpaceReindexShape_();
extern SEXP cpSpaceReindexShapesForBody_();
extern SEXP cpSpaceStep_();

// ---- end auto-generated externs ----


static const R_CallMethodDef CEntries[] = {

  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // Structs
  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  {"cpVect_", (DL_FUNC) &cpVect_, 2},
  {"cpVect_to_list_", (DL_FUNC) &cpVect_to_list_, 1},

  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // Funcs
  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  // ---- begin auto-generated callmethoddefs ----
  // chipmunk
  {"cpMomentForCircle_", (DL_FUNC) &cpMomentForCircle_, 4},
  {"cpAreaForCircle_", (DL_FUNC) &cpAreaForCircle_, 2},
  {"cpMomentForSegment_", (DL_FUNC) &cpMomentForSegment_, 4},
  {"cpAreaForSegment_", (DL_FUNC) &cpAreaForSegment_, 3},
  {"cpMomentForPoly_", (DL_FUNC) &cpMomentForPoly_, 5},
  {"cpAreaForPoly_", (DL_FUNC) &cpAreaForPoly_, 3},
  {"cpCentroidForPoly_", (DL_FUNC) &cpCentroidForPoly_, 2},
  {"cpMomentForBox_", (DL_FUNC) &cpMomentForBox_, 3},

  // cpBody
  {"cpBodyNew_", (DL_FUNC) &cpBodyNew_, 2},
  {"cpBodyGetPosition_", (DL_FUNC) &cpBodyGetPosition_, 1},
  {"cpBodySetPosition_", (DL_FUNC) &cpBodySetPosition_, 2},
  {"cpBodyGetVelocity_", (DL_FUNC) &cpBodyGetVelocity_, 1},
  {"cpBodySetVelocity_", (DL_FUNC) &cpBodySetVelocity_, 2},

  // cpShape
  {"cpShapeSetFriction_", (DL_FUNC) &cpShapeSetFriction_, 2},
  {"cpCircleShapeNew_", (DL_FUNC) &cpCircleShapeNew_, 3},
  {"cpSegmentShapeNew_", (DL_FUNC) &cpSegmentShapeNew_, 4},

  // cpSpace
  {"cpSpaceNew_", (DL_FUNC) &cpSpaceNew_, 0},
  {"cpSpaceSetIterations_", (DL_FUNC) &cpSpaceSetIterations_, 2},
  {"cpSpaceSetGravity_", (DL_FUNC) &cpSpaceSetGravity_, 2},
  {"cpSpaceSetDamping_", (DL_FUNC) &cpSpaceSetDamping_, 2},
  {"cpSpaceSetIdleSpeedThreshold_", (DL_FUNC) &cpSpaceSetIdleSpeedThreshold_, 2},
  {"cpSpaceSetSleepTimeThreshold_", (DL_FUNC) &cpSpaceSetSleepTimeThreshold_, 2},
  {"cpSpaceSetCollisionSlop_", (DL_FUNC) &cpSpaceSetCollisionSlop_, 2},
  {"cpSpaceSetCollisionBias_", (DL_FUNC) &cpSpaceSetCollisionBias_, 2},
  {"cpSpaceGetStaticBody_", (DL_FUNC) &cpSpaceGetStaticBody_, 1},
  {"cpSpaceGetCurrentTimeStep_", (DL_FUNC) &cpSpaceGetCurrentTimeStep_, 1},
  {"cpSpaceAddShape_", (DL_FUNC) &cpSpaceAddShape_, 2},
  {"cpSpaceAddBody_", (DL_FUNC) &cpSpaceAddBody_, 2},
  {"cpSpaceAddConstraint_", (DL_FUNC) &cpSpaceAddConstraint_, 2},
  {"cpSpaceRemoveShape_", (DL_FUNC) &cpSpaceRemoveShape_, 2},
  {"cpSpaceRemoveBody_", (DL_FUNC) &cpSpaceRemoveBody_, 2},
  {"cpSpaceContainsShape_", (DL_FUNC) &cpSpaceContainsShape_, 2},
  {"cpSpaceContainsBody_", (DL_FUNC) &cpSpaceContainsBody_, 2},
  {"cpSpaceReindexStatic_", (DL_FUNC) &cpSpaceReindexStatic_, 1},
  {"cpSpaceReindexShape_", (DL_FUNC) &cpSpaceReindexShape_, 2},
  {"cpSpaceReindexShapesForBody_", (DL_FUNC) &cpSpaceReindexShapesForBody_, 2},
  {"cpSpaceStep_", (DL_FUNC) &cpSpaceStep_, 2},

  // ---- end auto-generated callmethoddefs ----


  {NULL , NULL, 0}
};


void R_init_chipmunkcore(DllInfo *info) {
  R_registerRoutines(
    info,      // DllInfo
    NULL,      // .C
    CEntries,  // .Call
    NULL,      // Fortran
    NULL       // External
  );
  R_useDynamicSymbols(info, FALSE);
}



