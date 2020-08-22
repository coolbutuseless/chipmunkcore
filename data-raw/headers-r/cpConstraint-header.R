




cpConstraint_header <- list(


  cpConstraintDestroy = list(
    include = FALSE,
    doxy = r"{/// Destroy a constraint.}",
    proto_text = "CP_EXPORT void cpConstraintDestroy(cpConstraint *constraint);"
  ),

  cpConstraintFree = list(
    include = FALSE,
    doxy = r"{/// Destroy and free a constraint.}",
    proto_text = "CP_EXPORT void cpConstraintFree(cpConstraint *constraint);"
  ),

  cpConstraintGetSpace = list(
    include = FALSE,
    doxy = r"{/// Get the cpSpace this constraint is added to.}",
    proto_text = "CP_EXPORT cpSpace* cpConstraintGetSpace(const cpConstraint *constraint);"
  ),

  cpConstraintGetBodyA = list(
    include = FALSE,
    doxy = r"{/// Get the first body the constraint is attached to.}",
    proto_text = "CP_EXPORT cpBody* cpConstraintGetBodyA(const cpConstraint *constraint);"
  ),

  cpConstraintGetBodyB = list(
    include = FALSE,
    doxy = r"{/// Get the second body the constraint is attached to.}",
    proto_text = "CP_EXPORT cpBody* cpConstraintGetBodyB(const cpConstraint *constraint);"
  ),

  cpConstraintGetMaxForce = list(
    include = FALSE,
    doxy = r"{/// Get the maximum force that this constraint is allowed to use.}",
    proto_text = "CP_EXPORT cpFloat cpConstraintGetMaxForce(const cpConstraint *constraint);"
  ),

  cpConstraintSetMaxForce = list(
    include = TRUE,
    doxy = r"{/// Set the maximum force that this constraint is allowed to use. (defaults to INFINITY)}",
    proto_text = "CP_EXPORT void cpConstraintSetMaxForce(cpConstraint *constraint, cpFloat maxForce);"
  ),

  cpConstraintGetErrorBias = list(
    include = FALSE,
    doxy = r"{/// Get rate at which joint error is corrected.}",
    proto_text = "CP_EXPORT cpFloat cpConstraintGetErrorBias(const cpConstraint *constraint);"
  ),

  cpConstraintSetErrorBias = list(
    include = TRUE,
    doxy = r"{/// Set rate at which joint error is corrected.
    /// Defaults to pow(1.0 - 0.1, 60.0) meaning that it will
    /// correct 10% of the error every 1/60th of a second.}",
    proto_text = "CP_EXPORT void cpConstraintSetErrorBias(cpConstraint *constraint, cpFloat errorBias);"
  ),

  cpConstraintGetMaxBias = list(
    include = FALSE,
    doxy = r"{/// Get the maximum rate at which joint error is corrected.}",
    proto_text = "CP_EXPORT cpFloat cpConstraintGetMaxBias(const cpConstraint *constraint);"
  ),

  cpConstraintSetMaxBias = list(
    include = TRUE,
    doxy = r"{/// Set the maximum rate at which joint error is corrected. (defaults to INFINITY)}",
    proto_text = "CP_EXPORT void cpConstraintSetMaxBias(cpConstraint *constraint, cpFloat maxBias);"
  ),

  cpConstraintGetCollideBodies = list(
    include = FALSE,
    doxy = r"{/// Get if the two bodies connected by the constraint are allowed to collide or not.}",
    proto_text = "CP_EXPORT cpBool cpConstraintGetCollideBodies(const cpConstraint *constraint);"
  ),

  cpConstraintSetCollideBodies = list(
    include = FALSE,
    doxy = r"{/// Set if the two bodies connected by the constraint are allowed to collide or not. (defaults to cpFalse)}",
    proto_text = "CP_EXPORT void cpConstraintSetCollideBodies(cpConstraint *constraint, cpBool collideBodies);"
  ),

  cpConstraintGetPreSolveFunc = list(
    include = FALSE,
    doxy = r"{/// Get the pre-solve function that is called before the solver runs.}",
    proto_text = "CP_EXPORT cpConstraintPreSolveFunc cpConstraintGetPreSolveFunc(const cpConstraint *constraint);"
  ),

  cpConstraintSetPreSolveFunc = list(
    include = FALSE,
    doxy = r"{/// Set the pre-solve function that is called before the solver runs.}",
    proto_text = "CP_EXPORT void cpConstraintSetPreSolveFunc(cpConstraint *constraint, cpConstraintPreSolveFunc preSolveFunc);"
  ),

  cpConstraintGetPostSolveFunc = list(
    include = FALSE,
    doxy = r"{/// Get the post-solve function that is called before the solver runs.}",
    proto_text = "CP_EXPORT cpConstraintPostSolveFunc cpConstraintGetPostSolveFunc(const cpConstraint *constraint);"
  ),

  cpConstraintSetPostSolveFunc = list(
    include = FALSE,
    doxy = r"{/// Set the post-solve function that is called before the solver runs.}",
    proto_text = "CP_EXPORT void cpConstraintSetPostSolveFunc(cpConstraint *constraint, cpConstraintPostSolveFunc postSolveFunc);"
  ),

  cpConstraintGetUserData = list(
    include = FALSE,
    doxy = r"{/// Get the user definable data pointer for this constraint}",
    proto_text = "CP_EXPORT cpDataPointer cpConstraintGetUserData(const cpConstraint *constraint);"
  ),

  cpConstraintSetUserData = list(
    include = FALSE,
    doxy = r"{/// Set the user definable data pointer for this constraint}",
    proto_text = "CP_EXPORT void cpConstraintSetUserData(cpConstraint *constraint, cpDataPointer userData);"
  ),

  cpConstraintGetImpulse = list(
    include = FALSE,
    doxy = r"{/// Get the last impulse applied by this constraint.}",
    proto_text = "CP_EXPORT cpFloat cpConstraintGetImpulse(cpConstraint *constraint);"
  )
)
