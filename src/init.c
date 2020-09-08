
// #define R_NO_REMAP
#include <R.h>
#include <Rinternals.h>


extern SEXP get_body_state_();

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
extern SEXP cpBodyGetCenterOfGravity_();
extern SEXP cpBodyGetVelocity_();
extern SEXP cpBodySetVelocity_();
extern SEXP cpBodyGetForce_();
extern SEXP cpBodyGetAngle_();
extern SEXP cpBodySetAngle_();
extern SEXP cpBodyGetAngularVelocity_();
extern SEXP cpBodySetAngularVelocity_();
extern SEXP cpBodyGetTorque_();
extern SEXP cpBodySetTorque_();
extern SEXP cpBodyGetRotation_();

// cpConstraint
extern SEXP cpConstraintSetMaxForce_();
extern SEXP cpConstraintSetErrorBias_();
extern SEXP cpConstraintSetMaxBias_();

// cpDampedSpring
extern SEXP cpDampedSpringNew_();
extern SEXP cpDampedSpringSetRestLength_();
extern SEXP cpDampedSpringSetStiffness_();
extern SEXP cpDampedSpringSetDamping_();

// cpPolyShape
extern SEXP cpPolyShapeNew_();
extern SEXP cpBoxShapeNew_();

// cpShape
extern SEXP cpShapeSetMass_();
extern SEXP cpShapeSetDensity_();
extern SEXP cpShapeGetMoment_();
extern SEXP cpShapeGetArea_();
extern SEXP cpShapeGetCenterOfGravity_();
extern SEXP cpShapeSetSensor_();
extern SEXP cpShapeSetElasticity_();
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
extern SEXP cpSpaceRemoveConstraint_();
extern SEXP cpSpaceContainsShape_();
extern SEXP cpSpaceContainsBody_();
extern SEXP cpSpaceContainsConstraint_();
extern SEXP cpSpaceReindexStatic_();
extern SEXP cpSpaceReindexShape_();
extern SEXP cpSpaceReindexShapesForBody_();
extern SEXP cpSpaceStep_();

// cpTransform
extern SEXP cpTransformNew_();
extern SEXP cpTransformMult_();
extern SEXP cpTransformTranslate_();
extern SEXP cpTransformScale_();
extern SEXP cpTransformRotate_();
extern SEXP cpTransformRigid_();

// ---- end auto-generated externs ----


static const R_CallMethodDef CEntries[] = {

  {"get_body_state_", (DL_FUNC) &get_body_state_, 1},

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
  {"cpBodyGetCenterOfGravity_", (DL_FUNC) &cpBodyGetCenterOfGravity_, 1},
  {"cpBodyGetVelocity_", (DL_FUNC) &cpBodyGetVelocity_, 1},
  {"cpBodySetVelocity_", (DL_FUNC) &cpBodySetVelocity_, 2},
  {"cpBodyGetForce_", (DL_FUNC) &cpBodyGetForce_, 1},
  {"cpBodyGetAngle_", (DL_FUNC) &cpBodyGetAngle_, 1},
  {"cpBodySetAngle_", (DL_FUNC) &cpBodySetAngle_, 2},
  {"cpBodyGetAngularVelocity_", (DL_FUNC) &cpBodyGetAngularVelocity_, 1},
  {"cpBodySetAngularVelocity_", (DL_FUNC) &cpBodySetAngularVelocity_, 2},
  {"cpBodyGetTorque_", (DL_FUNC) &cpBodyGetTorque_, 1},
  {"cpBodySetTorque_", (DL_FUNC) &cpBodySetTorque_, 2},
  {"cpBodyGetRotation_", (DL_FUNC) &cpBodyGetRotation_, 1},

  // cpConstraint
  {"cpConstraintSetMaxForce_", (DL_FUNC) &cpConstraintSetMaxForce_, 2},
  {"cpConstraintSetErrorBias_", (DL_FUNC) &cpConstraintSetErrorBias_, 2},
  {"cpConstraintSetMaxBias_", (DL_FUNC) &cpConstraintSetMaxBias_, 2},

  // cpDampedSpring
  {"cpDampedSpringNew_", (DL_FUNC) &cpDampedSpringNew_, 7},
  {"cpDampedSpringSetRestLength_", (DL_FUNC) &cpDampedSpringSetRestLength_, 2},
  {"cpDampedSpringSetStiffness_", (DL_FUNC) &cpDampedSpringSetStiffness_, 2},
  {"cpDampedSpringSetDamping_", (DL_FUNC) &cpDampedSpringSetDamping_, 2},

  // cpPolyShape
  {"cpPolyShapeNew_", (DL_FUNC) &cpPolyShapeNew_, 5},
  {"cpBoxShapeNew_", (DL_FUNC) &cpBoxShapeNew_, 4},

  // cpShape
  {"cpShapeSetMass_", (DL_FUNC) &cpShapeSetMass_, 2},
  {"cpShapeSetDensity_", (DL_FUNC) &cpShapeSetDensity_, 2},
  {"cpShapeGetMoment_", (DL_FUNC) &cpShapeGetMoment_, 1},
  {"cpShapeGetArea_", (DL_FUNC) &cpShapeGetArea_, 1},
  {"cpShapeGetCenterOfGravity_", (DL_FUNC) &cpShapeGetCenterOfGravity_, 1},
  {"cpShapeSetSensor_", (DL_FUNC) &cpShapeSetSensor_, 2},
  {"cpShapeSetElasticity_", (DL_FUNC) &cpShapeSetElasticity_, 2},
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
  {"cpSpaceRemoveConstraint_", (DL_FUNC) &cpSpaceRemoveConstraint_, 2},
  {"cpSpaceContainsShape_", (DL_FUNC) &cpSpaceContainsShape_, 2},
  {"cpSpaceContainsBody_", (DL_FUNC) &cpSpaceContainsBody_, 2},
  {"cpSpaceContainsConstraint_", (DL_FUNC) &cpSpaceContainsConstraint_, 2},
  {"cpSpaceReindexStatic_", (DL_FUNC) &cpSpaceReindexStatic_, 1},
  {"cpSpaceReindexShape_", (DL_FUNC) &cpSpaceReindexShape_, 2},
  {"cpSpaceReindexShapesForBody_", (DL_FUNC) &cpSpaceReindexShapesForBody_, 2},
  {"cpSpaceStep_", (DL_FUNC) &cpSpaceStep_, 2},

  // cpTransform
  {"cpTransformNew_", (DL_FUNC) &cpTransformNew_, 6},
  {"cpTransformMult_", (DL_FUNC) &cpTransformMult_, 2},
  {"cpTransformTranslate_", (DL_FUNC) &cpTransformTranslate_, 1},
  {"cpTransformScale_", (DL_FUNC) &cpTransformScale_, 2},
  {"cpTransformRotate_", (DL_FUNC) &cpTransformRotate_, 1},
  {"cpTransformRigid_", (DL_FUNC) &cpTransformRigid_, 2},

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



