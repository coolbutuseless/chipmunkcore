




cpDampedSpring_header <- list(

  cpDampedSpringAlloc = list(
    include = FALSE,
    doxy = r"{/// Allocate a damped spring.}",
    proto_text = "CP_EXPORT cpDampedSpring* cpDampedSpringAlloc(void);"
  ),

  cpDampedSpringInit = list(
    include = FALSE,
    doxy = r"{/// Initialize a damped spring.}",
    proto_text = "CP_EXPORT cpDampedSpring* cpDampedSpringInit(cpDampedSpring *joint, cpBody *a, cpBody *b, cpVect anchorA, cpVect anchorB, cpFloat restLength, cpFloat stiffness, cpFloat damping);"
  ),

  cpDampedSpringNew = list(
    include = TRUE,
    doxy = r"{/// Allocate and initialize a damped spring.}",
    proto_text = "CP_EXPORT cpConstraint* cpDampedSpringNew(cpBody *a, cpBody *b, cpVect anchorA, cpVect anchorB, cpFloat restLength, cpFloat stiffness, cpFloat damping);",
    post_c = c(
      "SEXP list_ = PROTECT(NEW_LIST(2));",
      "SET_VECTOR_ELT(list_, 0, a_);",
      "SET_VECTOR_ELT(list_, 1, b_);",
      "R_SetExternalPtrProtected(result_, list_); // Protect"
    )
  ),

  cpDampedSpringGetAnchorA = list(
    include = FALSE,
    doxy = r"{/// Get the location of the first anchor relative to the first body.}",
    proto_text = "CP_EXPORT cpVect cpDampedSpringGetAnchorA(const cpConstraint *constraint);"
  ),

  cpDampedSpringSetAnchorA = list(
    include = FALSE,
    doxy = r"{/// Set the location of the first anchor relative to the first body.}",
    proto_text = "CP_EXPORT void cpDampedSpringSetAnchorA(cpConstraint *constraint, cpVect anchorA);"
  ),

  cpDampedSpringGetAnchorB = list(
    include = FALSE,
    doxy = r"{/// Get the location of the second anchor relative to the second body.}",
    proto_text = "CP_EXPORT cpVect cpDampedSpringGetAnchorB(const cpConstraint *constraint);"
  ),

  cpDampedSpringSetAnchorB = list(
    include = FALSE,
    doxy = r"{/// Set the location of the second anchor relative to the second body.}",
    proto_text = "CP_EXPORT void cpDampedSpringSetAnchorB(cpConstraint *constraint, cpVect anchorB);"
  ),

  cpDampedSpringGetRestLength = list(
    include = FALSE,
    doxy = r"{/// Get the rest length of the spring.}",
    proto_text = "CP_EXPORT cpFloat cpDampedSpringGetRestLength(const cpConstraint *constraint);"
  ),

  cpDampedSpringSetRestLength = list(
    include = TRUE,
    doxy = r"{/// Set the rest length of the spring.}",
    proto_text = "CP_EXPORT void cpDampedSpringSetRestLength(cpConstraint *constraint, cpFloat restLength);"
  ),

  cpDampedSpringGetStiffness = list(
    include = FALSE,
    doxy = r"{/// Get the stiffness of the spring in force/distance.}",
    proto_text = "CP_EXPORT cpFloat cpDampedSpringGetStiffness(const cpConstraint *constraint);"
  ),

  cpDampedSpringSetStiffness = list(
    include = TRUE,
    doxy = r"{/// Set the stiffness of the spring in force/distance.}",
    proto_text = "CP_EXPORT void cpDampedSpringSetStiffness(cpConstraint *constraint, cpFloat stiffness);"
  ),

  cpDampedSpringGetDamping = list(
    include = FALSE,
    doxy = r"{/// Get the damping of the spring.}",
    proto_text = "CP_EXPORT cpFloat cpDampedSpringGetDamping(const cpConstraint *constraint);"
  ),

  cpDampedSpringSetDamping = list(
    include = TRUE,
    doxy = r"{/// Set the damping of the spring.}",
    proto_text = "CP_EXPORT void cpDampedSpringSetDamping(cpConstraint *constraint, cpFloat damping);"
  ),

  cpDampedSpringGetSpringForceFunc = list(
    include = FALSE,
    doxy = r"{/// Get the damping of the spring.}",
    proto_text = "CP_EXPORT cpDampedSpringForceFunc cpDampedSpringGetSpringForceFunc(const cpConstraint *constraint);"
  ),

  cpDampedSpringSetSpringForceFunc = list(
    include = FALSE,
    doxy = r"{/// Set the damping of the spring.}",
    proto_text = "CP_EXPORT void cpDampedSpringSetSpringForceFunc(cpConstraint *constraint, cpDampedSpringForceFunc springForceFunc);"
  )
)
