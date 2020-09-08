




cpBody_header <- list(

  cpBodyAlloc = list(
    include = FALSE,
    doxy = r"{/// Allocate a cpBody.}",
    proto_text = "CP_EXPORT cpBody* cpBodyAlloc(void);"
  ),

  cpBodyInit = list(
    include = FALSE,
    doxy = r"{/// Initialize a cpBody.}",
    proto_text = "CP_EXPORT cpBody* cpBodyInit(cpBody *body, cpFloat mass, cpFloat moment);"
  ),

  cpBodyNew = list(
    include = TRUE,
    doxy = r"{/// Allocate and initialize a cpBody.}",
    proto_text = "CP_EXPORT cpBody* cpBodyNew(cpFloat mass, cpFloat moment);"
  ),

  cpBodyNewKinematic = list(
    include = FALSE,
    doxy = r"{/// Allocate and initialize a cpBody, and set it as a kinematic body.}",
    proto_text = "CP_EXPORT cpBody* cpBodyNewKinematic(void);"
  ),

  cpBodyNewStatic = list(
    include = FALSE,
    doxy = r"{/// Allocate and initialize a cpBody, and set it as a static body.}",
    proto_text = "CP_EXPORT cpBody* cpBodyNewStatic(void);"
  ),

  cpBodyDestroy = list(
    include = FALSE,
    doxy = r"{/// Destroy a cpBody.}",
    proto_text = "CP_EXPORT void cpBodyDestroy(cpBody *body);"
  ),

  cpBodyFree = list(
    include = FALSE,
    doxy = r"{/// Destroy and free a cpBody.}",
    proto_text = "CP_EXPORT void cpBodyFree(cpBody *body);"
  ),

  cpBodyActivate = list(
    include = FALSE,
    doxy = r"{/// Wake up a sleeping or idle body.}",
    proto_text = "CP_EXPORT void cpBodyActivate(cpBody *body);"
  ),

  cpBodyActivateStatic = list(
    include = FALSE,
    doxy = r"{/// Wake up any sleeping or idle bodies touching a static body.}",
    proto_text = "CP_EXPORT void cpBodyActivateStatic(cpBody *body, cpShape *filter);"
  ),

  cpBodySleep = list(
    include = FALSE,
    doxy = r"{/// Force a body to fall asleep immediately.}",
    proto_text = "CP_EXPORT void cpBodySleep(cpBody *body);"
  ),

  cpBodySleepWithGroup = list(
    include = FALSE,
    doxy = r"{/// Force a body to fall asleep immediately along with other bodies in a group.}",
    proto_text = "CP_EXPORT void cpBodySleepWithGroup(cpBody *body, cpBody *group);"
  ),

  cpBodyIsSleeping = list(
    include = FALSE,
    doxy = r"{/// Returns true if the body is sleeping.}",
    proto_text = "CP_EXPORT cpBool cpBodyIsSleeping(const cpBody *body);"
  ),

  cpBodyGetType = list(
    include = FALSE,
    doxy = r"{/// Get the type of the body.}",
    proto_text = "CP_EXPORT cpBodyType cpBodyGetType(cpBody *body);"
  ),

  cpBodySetType = list(
    include = FALSE,
    doxy = r"{/// Set the type of the body.}",
    proto_text = "CP_EXPORT void cpBodySetType(cpBody *body, cpBodyType type);"
  ),

  cpBodyGetSpace = list(
    include = FALSE,
    doxy = r"{/// Get the space this body is added to.}",
    proto_text = "CP_EXPORT cpSpace* cpBodyGetSpace(const cpBody *body);"
  ),

  cpBodyGetMass = list(
    include = FALSE,
    doxy = r"{/// Get the mass of the body.}",
    proto_text = "CP_EXPORT cpFloat cpBodyGetMass(const cpBody *body);"
  ),

  cpBodySetMass = list(
    include = FALSE,
    doxy = r"{/// Set the mass of the body.}",
    proto_text = "CP_EXPORT void cpBodySetMass(cpBody *body, cpFloat m);"
  ),

  cpBodyGetMoment = list(
    include = FALSE,
    doxy = r"{/// Get the moment of inertia of the body.}",
    proto_text = "CP_EXPORT cpFloat cpBodyGetMoment(const cpBody *body);"
  ),

  cpBodySetMoment = list(
    include = FALSE,
    doxy = r"{/// Set the moment of inertia of the body.}",
    proto_text = "CP_EXPORT void cpBodySetMoment(cpBody *body, cpFloat i);"
  ),

  cpBodyGetPosition = list(
    include = TRUE,
    doxy = r"{/// Set the position of a body.}",
    proto_text = "CP_EXPORT cpVect cpBodyGetPosition(const cpBody *body);"
  ),

  cpBodySetPosition = list(
    include = TRUE,
    doxy = r"{/// Set the position of the body.}",
    proto_text = "CP_EXPORT void cpBodySetPosition(cpBody *body, cpVect pos);"
  ),

  cpBodyGetCenterOfGravity = list(
    include = TRUE,
    doxy = r"{/// Get the offset of the center of gravity in body local coordinates.}",
    proto_text = "CP_EXPORT cpVect cpBodyGetCenterOfGravity(const cpBody *body);"
  ),

  cpBodySetCenterOfGravity = list(
    include = FALSE,
    doxy = r"{/// Set the offset of the center of gravity in body local coordinates.}",
    proto_text = "CP_EXPORT void cpBodySetCenterOfGravity(cpBody *body, cpVect cog);"
  ),

  cpBodyGetVelocity = list(
    include = TRUE,
    doxy = r"{/// Get the velocity of the body.}",
    proto_text = "CP_EXPORT cpVect cpBodyGetVelocity(const cpBody *body);"
  ),

  cpBodySetVelocity = list(
    include = TRUE,
    doxy = r"{/// Set the velocity of the body.}",
    proto_text = "CP_EXPORT void cpBodySetVelocity(cpBody *body, cpVect velocity);"
  ),

  cpBodyGetForce = list(
    include = TRUE,
    doxy = r"{/// Get the force applied to the body for the next time step.}",
    proto_text = "CP_EXPORT cpVect cpBodyGetForce(const cpBody *body);"
  ),

  cpBodySetForce = list(
    include = FALSE,
    doxy = r"{/// Set the force applied to the body for the next time step.}",
    proto_text = "CP_EXPORT void cpBodySetForce(cpBody *body, cpVect force);"
  ),

  cpBodyGetAngle = list(
    include = TRUE,
    doxy = r"{/// Get the angle of the body.}",
    proto_text = "CP_EXPORT cpFloat cpBodyGetAngle(const cpBody *body);"
  ),

  cpBodySetAngle = list(
    include = TRUE,
    doxy = r"{/// Set the angle of a body.}",
    proto_text = "CP_EXPORT void cpBodySetAngle(cpBody *body, cpFloat a);"
  ),

  cpBodyGetAngularVelocity = list(
    include = TRUE,
    doxy = r"{/// Get the angular velocity of the body.}",
    proto_text = "CP_EXPORT cpFloat cpBodyGetAngularVelocity(const cpBody *body);"
  ),

  cpBodySetAngularVelocity = list(
    include = TRUE,
    doxy = r"{/// Set the angular velocity of the body.}",
    proto_text = "CP_EXPORT void cpBodySetAngularVelocity(cpBody *body, cpFloat angularVelocity);"
  ),

  cpBodyGetTorque = list(
    include = TRUE,
    doxy = r"{/// Get the torque applied to the body for the next time step.}",
    proto_text = "CP_EXPORT cpFloat cpBodyGetTorque(const cpBody *body);"
  ),

  cpBodySetTorque = list(
    include = TRUE,
    doxy = r"{/// Set the torque applied to the body for the next time step.}",
    proto_text = "CP_EXPORT void cpBodySetTorque(cpBody *body, cpFloat torque);"
  ),

  cpBodyGetRotation = list(
    include = TRUE,
    doxy = r"{/// Get the rotation vector of the body. (The x basis vector of it's transform.)}",
    proto_text = "CP_EXPORT cpVect cpBodyGetRotation(const cpBody *body);"
  ),

  cpBodyGetUserData = list(
    include = FALSE,
    doxy = r"{/// Get the user data pointer assigned to the body.}",
    proto_text = "CP_EXPORT cpDataPointer cpBodyGetUserData(const cpBody *body);"
  ),

  cpBodySetUserData = list(
    include = FALSE,
    doxy = r"{/// Set the user data pointer assigned to the body.}",
    proto_text = "CP_EXPORT void cpBodySetUserData(cpBody *body, cpDataPointer userData);"
  ),

  cpBodySetVelocityUpdateFunc = list(
    include = FALSE,
    doxy = r"{/// Set the callback used to update a body's velocity.}",
    proto_text = "CP_EXPORT void cpBodySetVelocityUpdateFunc(cpBody *body, cpBodyVelocityFunc velocityFunc);"
  ),

  cpBodySetPositionUpdateFunc = list(
    include = FALSE,
    doxy = r"{/// Set the callback used to update a body's position.
    /// NOTE: It's not generally recommended to override this unless you call the default position update function.}",
    proto_text = "CP_EXPORT void cpBodySetPositionUpdateFunc(cpBody *body, cpBodyPositionFunc positionFunc);"
  ),

  cpBodyUpdateVelocity = list(
    include = FALSE,
    doxy = r"{/// Default velocity integration function..}",
    proto_text = "CP_EXPORT void cpBodyUpdateVelocity(cpBody *body, cpVect gravity, cpFloat damping, cpFloat dt);"
  ),

  cpBodyUpdatePosition = list(
    include = FALSE,
    doxy = r"{/// Default position integration function.}",
    proto_text = "CP_EXPORT void cpBodyUpdatePosition(cpBody *body, cpFloat dt);"
  ),

  cpBodyLocalToWorld = list(
    include = FALSE,
    doxy = r"{/// Convert body relative/local coordinates to absolute/world coordinates.}",
    proto_text = "CP_EXPORT cpVect cpBodyLocalToWorld(const cpBody *body, const cpVect point);"
  ),

  cpBodyWorldToLocal = list(
    include = FALSE,
    doxy = r"{/// Convert body absolute/world coordinates to  relative/local coordinates.}",
    proto_text = "CP_EXPORT cpVect cpBodyWorldToLocal(const cpBody *body, const cpVect point);"
  ),

  cpBodyApplyForceAtWorldPoint = list(
    include = FALSE,
    doxy = r"{/// Apply a force to a body. Both the force and point are expressed in world coordinates.}",
    proto_text = "CP_EXPORT void cpBodyApplyForceAtWorldPoint(cpBody *body, cpVect force, cpVect point);"
  ),

  cpBodyApplyForceAtLocalPoint = list(
    include = FALSE,
    doxy = r"{/// Apply a force to a body. Both the force and point are expressed in body local coordinates.}",
    proto_text = "CP_EXPORT void cpBodyApplyForceAtLocalPoint(cpBody *body, cpVect force, cpVect point);"
  ),

  cpBodyApplyImpulseAtWorldPoint = list(
    include = FALSE,
    doxy = r"{/// Apply an impulse to a body. Both the impulse and point are expressed in world coordinates.}",
    proto_text = "CP_EXPORT void cpBodyApplyImpulseAtWorldPoint(cpBody *body, cpVect impulse, cpVect point);"
  ),

  cpBodyApplyImpulseAtLocalPoint = list(
    include = FALSE,
    doxy = r"{/// Apply an impulse to a body. Both the impulse and point are expressed in body local coordinates.}",
    proto_text = "CP_EXPORT void cpBodyApplyImpulseAtLocalPoint(cpBody *body, cpVect impulse, cpVect point);"
  ),

  cpBodyGetVelocityAtWorldPoint = list(
    include = FALSE,
    doxy = r"{/// Get the velocity on a body (in world units) at a point on the body in world coordinates.}",
    proto_text = "CP_EXPORT cpVect cpBodyGetVelocityAtWorldPoint(const cpBody *body, cpVect point);"
  ),

  cpBodyGetVelocityAtLocalPoint = list(
    include = FALSE,
    doxy = r"{/// Get the velocity on a body (in world units) at a point on the body in local coordinates.}",
    proto_text = "CP_EXPORT cpVect cpBodyGetVelocityAtLocalPoint(const cpBody *body, cpVect point);"
  ),

  cpBodyKineticEnergy = list(
    include = FALSE,
    doxy = r"{/// Get the amount of kinetic energy contained by the body.}",
    proto_text = "CP_EXPORT cpFloat cpBodyKineticEnergy(const cpBody *body);"
  ),

  cpBodyEachShape = list(
    include = FALSE,
    doxy = r"{/// Call @c func once for each shape attached to @c body and added to the space.}",
    proto_text = "CP_EXPORT void cpBodyEachShape(cpBody *body, cpBodyShapeIteratorFunc func, void *data);"
  ),

  cpBodyEachConstraint = list(
    include = FALSE,
    doxy = r"{/// Call @c func once for each constraint attached to @c body and added to the space.}",
    proto_text = "CP_EXPORT void cpBodyEachConstraint(cpBody *body, cpBodyConstraintIteratorFunc func, void *data);"
  ),

  cpBodyEachArbiter = list(
    include = FALSE,
    doxy = r"{/// Call @c func once for each arbiter that is currently active on the body.}",
    proto_text = "CP_EXPORT void cpBodyEachArbiter(cpBody *body, cpBodyArbiterIteratorFunc func, void *data);"
  )
)
