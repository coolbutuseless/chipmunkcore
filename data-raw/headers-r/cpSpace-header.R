




cpSpace_header <- list(

  cpSpaceAlloc = list(
    include = FALSE,
    doxy = r"{/// Allocate a cpSpace.}",
    proto_text = "CP_EXPORT cpSpace* cpSpaceAlloc(void);"
  ),

  cpSpaceInit = list(
    include = FALSE,
    doxy = r"{/// Initialize a cpSpace.}",
    proto_text = "CP_EXPORT cpSpace* cpSpaceInit(cpSpace *space);"
  ),

  cpSpaceNew = list(
    include = TRUE,
    doxy = r"{/// Allocate and initialize a cpSpace.}",
    proto_text = "CP_EXPORT cpSpace* cpSpaceNew(void);"
  ),

  cpSpaceDestroy = list(
    include = FALSE,
    doxy = r"{/// Destroy a cpSpace.}",
    proto_text = "CP_EXPORT void cpSpaceDestroy(cpSpace *space);"
  ),

  cpSpaceFree = list(
    include = FALSE,
    doxy = r"{/// Destroy and free a cpSpace.}",
    proto_text = "CP_EXPORT void cpSpaceFree(cpSpace *space);"
  ),

  cpSpaceGetIterations = list(
    include = FALSE,
    doxy = r"{/// Number of iterations to use in the impulse solver to solve contacts and other constraints.}",
    proto_text = "CP_EXPORT int cpSpaceGetIterations(const cpSpace *space);"
  ),

  cpSpaceSetIterations = list(
    include = TRUE,
    doxy = r"{/// Number of iterations to use in the impulse solver to solve contacts and other constraints.}",
    proto_text = "CP_EXPORT void cpSpaceSetIterations(cpSpace *space, int iterations);"
  ),

  cpSpaceGetGravity = list(
    include = FALSE,
    doxy = r"{/// Gravity to pass to rigid bodies when integrating velocity.}",
    proto_text = "CP_EXPORT cpVect cpSpaceGetGravity(const cpSpace *space);"
  ),

  cpSpaceSetGravity = list(
    include = TRUE,
    doxy = r"{/// Gravity to pass to rigid bodies when integrating velocity.}",
    proto_text = "CP_EXPORT void cpSpaceSetGravity(cpSpace *space, cpVect gravity);"
  ),

  cpSpaceGetDamping = list(
    include = FALSE,
    doxy = r"{/// Damping rate expressed as the fraction of velocity bodies retain each second.
    /// A value of 0.9 would mean that each body's velocity will drop 10% per second.
    /// The default value is 1.0, meaning no damping is applied.
    /// @note This damping value is different than those of cpDampedSpring and cpDampedRotarySpring.}",
    proto_text = "CP_EXPORT cpFloat cpSpaceGetDamping(const cpSpace *space);"
  ),

  cpSpaceSetDamping = list(
    include = TRUE,
    doxy = r"{/// Damping rate expressed as the fraction of velocity bodies retain each second.
    /// A value of 0.9 would mean that each body's velocity will drop 10% per second.
    /// The default value is 1.0, meaning no damping is applied.
    /// @note This damping value is different than those of cpDampedSpring and cpDampedRotarySpring.}",
    proto_text = "CP_EXPORT void cpSpaceSetDamping(cpSpace *space, cpFloat damping);"
  ),

  cpSpaceGetIdleSpeedThreshold = list(
    include = FALSE,
    doxy = r"{/// Speed threshold for a body to be considered idle.
    /// The default value of 0 means to let the space guess a good threshold based on gravity.}",
    proto_text = "CP_EXPORT cpFloat cpSpaceGetIdleSpeedThreshold(const cpSpace *space);"
  ),

  cpSpaceSetIdleSpeedThreshold = list(
    include = TRUE,
    doxy = r"{/// Speed threshold for a body to be considered idle.
    /// The default value of 0 means to let the space guess a good threshold based on gravity.}",
    proto_text = "CP_EXPORT void cpSpaceSetIdleSpeedThreshold(cpSpace *space, cpFloat idleSpeedThreshold);"
  ),

  cpSpaceGetSleepTimeThreshold = list(
    include = FALSE,
    doxy = r"{/// Time a group of bodies must remain idle in order to fall asleep.
    /// Enabling sleeping also implicitly enables the the contact graph.
    /// The default value of INFINITY disables the sleeping algorithm.}",
    proto_text = "CP_EXPORT cpFloat cpSpaceGetSleepTimeThreshold(const cpSpace *space);"
  ),

  cpSpaceSetSleepTimeThreshold = list(
    include = TRUE,
    doxy = r"{/// Time a group of bodies must remain idle in order to fall asleep.
    /// Enabling sleeping also implicitly enables the the contact graph.
    /// The default value of INFINITY disables the sleeping algorithm.}",
    proto_text = "CP_EXPORT void cpSpaceSetSleepTimeThreshold(cpSpace *space, cpFloat sleepTimeThreshold);"
  ),

  cpSpaceGetCollisionSlop = list(
    include = FALSE,
    doxy = r"{/// Amount of encouraged penetration between colliding shapes.
    /// Used to reduce oscillating contacts and keep the collision cache warm.
    /// Defaults to 0.1. If you have poor simulation quality,
    /// increase this number as much as possible without allowing visible amounts of overlap.}",
    proto_text = "CP_EXPORT cpFloat cpSpaceGetCollisionSlop(const cpSpace *space);"
  ),

  cpSpaceSetCollisionSlop = list(
    include = TRUE,
    doxy = r"{/// Amount of encouraged penetration between colliding shapes.
    /// Used to reduce oscillating contacts and keep the collision cache warm.
    /// Defaults to 0.1. If you have poor simulation quality,
    /// increase this number as much as possible without allowing visible amounts of overlap.}",
    proto_text = "CP_EXPORT void cpSpaceSetCollisionSlop(cpSpace *space, cpFloat collisionSlop);"
  ),

  cpSpaceGetCollisionBias = list(
    include = FALSE,
    doxy = r"{/// Determines how fast overlapping shapes are pushed apart.
    /// Expressed as a fraction of the error remaining after each second.
    /// Defaults to pow(1.0 - 0.1, 60.0) meaning that Chipmunk fixes 10% of overlap each frame at 60Hz.}",
    proto_text = "CP_EXPORT cpFloat cpSpaceGetCollisionBias(const cpSpace *space);"
  ),

  cpSpaceSetCollisionBias = list(
    include = TRUE,
    doxy = r"{/// Determines how fast overlapping shapes are pushed apart.
    /// Expressed as a fraction of the error remaining after each second.
    /// Defaults to pow(1.0 - 0.1, 60.0) meaning that Chipmunk fixes 10% of overlap each frame at 60Hz.}",
    proto_text = "CP_EXPORT void cpSpaceSetCollisionBias(cpSpace *space, cpFloat collisionBias);"
  ),

  cpSpaceGetCollisionPersistence = list(
    include = FALSE,
    doxy = r"{/// Number of frames that contact information should persist.
    /// Defaults to 3. There is probably never a reason to change this value.}",
    proto_text = "CP_EXPORT cpTimestamp cpSpaceGetCollisionPersistence(const cpSpace *space);"
  ),

  cpSpaceSetCollisionPersistence = list(
    include = FALSE,
    doxy = r"{/// Number of frames that contact information should persist.
    /// Defaults to 3. There is probably never a reason to change this value.}",
    proto_text = "CP_EXPORT void cpSpaceSetCollisionPersistence(cpSpace *space, cpTimestamp collisionPersistence);"
  ),

  cpSpaceGetUserData = list(
    include = FALSE,
    doxy = r"{/// User definable data pointer.
    /// Generally this points to your game's controller or game state
    /// class so you can access it when given a cpSpace reference in a callback.}",
    proto_text = "CP_EXPORT cpDataPointer cpSpaceGetUserData(const cpSpace *space);"
  ),

  cpSpaceSetUserData = list(
    include = FALSE,
    doxy = r"{/// User definable data pointer.
    /// Generally this points to your game's controller or game state
    /// class so you can access it when given a cpSpace reference in a callback.}",
    proto_text = "CP_EXPORT void cpSpaceSetUserData(cpSpace *space, cpDataPointer userData);"
  ),

  cpSpaceGetStaticBody = list(
    include = TRUE,
    doxy = r"{/// The Space provided static body for a given cpSpace.
    /// This is merely provided for convenience and you are not required to use it.}",
    proto_text = "CP_EXPORT cpBody* cpSpaceGetStaticBody(const cpSpace *space);",
    finalizer = NA
  ),

  cpSpaceGetCurrentTimeStep = list(
    include = TRUE,
    doxy = r"{/// Returns the current (or most recent) time step used with the given space.
    /// Useful from callbacks if your time step is not a compile-time global.}",
    proto_text = "CP_EXPORT cpFloat cpSpaceGetCurrentTimeStep(const cpSpace *space);"
  ),

  cpSpaceIsLocked = list(
    include = FALSE,
    doxy = r"{/// returns true from inside a callback when objects cannot be added/removed.}",
    proto_text = "CP_EXPORT cpBool cpSpaceIsLocked(cpSpace *space);"
  ),

  cpSpaceAddDefaultCollisionHandler = list(
    include = FALSE,
    doxy = r"{/// Create or return the existing collision handler that is called for all collisions that are not handled by a more specific collision handler.}",
    proto_text = "CP_EXPORT cpCollisionHandler *cpSpaceAddDefaultCollisionHandler(cpSpace *space);"
  ),

  cpSpaceAddCollisionHandler = list(
    include = FALSE,
    doxy = r"{/// Create or return the existing collision handler for the specified pair of collision types.
    /// If wildcard handlers are used with either of the collision types, it's the responibility of the custom handler to invoke the wildcard handlers.}",
    proto_text = "CP_EXPORT cpCollisionHandler *cpSpaceAddCollisionHandler(cpSpace *space, cpCollisionType a, cpCollisionType b);"
  ),

  cpSpaceAddWildcardHandler = list(
    include = FALSE,
    doxy = r"{/// Create or return the existing wildcard collision handler for the specified type.}",
    proto_text = "CP_EXPORT cpCollisionHandler *cpSpaceAddWildcardHandler(cpSpace *space, cpCollisionType type);"
  ),

  cpSpaceAddShape = list(
    include = TRUE,
    doxy = r"{/// Add a collision shape to the simulation.
    /// If the shape is attached to a static body, it will be added as a static shape.}",
    proto_text = "CP_EXPORT void cpSpaceAddShape(cpSpace *space, cpShape *shape);",
    void_return_override = "cpShape* changed to void. function does not allocate this. just pass through the arg",
    post_c = c('R_SetExternalPtrProtected(shape_, space_);  // Protect')
  ),

  cpSpaceAddBody = list(
    include = TRUE,
    doxy = r"{/// Add a rigid body to the simulation.}",
    proto_text = "CP_EXPORT void cpSpaceAddBody(cpSpace *space, cpBody *body);",
    void_return_override = "cpBody* changed to void. function does not allocate this. just pass through the arg",
    post_c = c("R_SetExternalPtrProtected(body_, space_);  // Protect")
  ),

  cpSpaceAddConstraint = list(
    include = TRUE,
    doxy = r"{/// Add a constraint to the simulation.}",
    proto_text = "CP_EXPORT void cpSpaceAddConstraint(cpSpace *space, cpConstraint *constraint);",
    void_return_override = "cpConstraint* changed to void. function does not allocate this. just pass through the arg",
    post_c = c("R_SetExternalPtrProtected(constraint_, space_);  // Protect")
  ),

  cpSpaceRemoveShape = list(
    include = TRUE,
    doxy = r"{/// Remove a collision shape from the simulation.}",
    proto_text = "CP_EXPORT void cpSpaceRemoveShape(cpSpace *space, cpShape *shape);",
    post_c = c("R_SetExternalPtrProtected(shape_, R_NilValue);  // unprotect")
  ),

  cpSpaceRemoveBody = list(
    include = TRUE,
    doxy = r"{/// Remove a rigid body from the simulation.}",
    proto_text = "CP_EXPORT void cpSpaceRemoveBody(cpSpace *space, cpBody *body);",
    post_c = c("R_SetExternalPtrProtected(body_, R_NilValue);  // unprotect")
  ),

  cpSpaceRemoveConstraint = list(
    include = TRUE,
    doxy = r"{/// Remove a constraint from the simulation.}",
    proto_text = "CP_EXPORT void cpSpaceRemoveConstraint(cpSpace *space, cpConstraint *constraint);",
    post_c = c("R_SetExternalPtrProtected(constraint_, R_NilValue);  // unprotect")
  ),

  cpSpaceContainsShape = list(
    include = TRUE,
    doxy = r"{/// Test if a collision shape has been added to the space.}",
    proto_text = "CP_EXPORT cpBool cpSpaceContainsShape(cpSpace *space, cpShape *shape);"
  ),

  cpSpaceContainsBody = list(
    include = TRUE,
    doxy = r"{/// Test if a rigid body has been added to the space.}",
    proto_text = "CP_EXPORT cpBool cpSpaceContainsBody(cpSpace *space, cpBody *body);"
  ),

  cpSpaceContainsConstraint = list(
    include = TRUE,
    doxy = r"{/// Test if a constraint has been added to the space.}",
    proto_text = "CP_EXPORT cpBool cpSpaceContainsConstraint(cpSpace *space, cpConstraint *constraint);"
  ),

  cpSpaceAddPostStepCallback = list(
    include = FALSE,
    doxy = r"{/// Schedule a post-step callback to be called when cpSpaceStep() finishes.
    /// You can only register one callback per unique value for @c key.
    /// Returns true only if @c key has never been scheduled before.
    /// It's possible to pass @c NULL for @c func if you only want to mark @c key as being used.}",
    proto_text = "CP_EXPORT cpBool cpSpaceAddPostStepCallback(cpSpace *space, cpPostStepFunc func, void *key, void *data);"
  ),

  cpSpacePointQueryFunc = list(
    include = FALSE,
    doxy = r"{/// Query the space at a point and call @c func for each shape found.}",
    proto_text = "CP_EXPORT void cpSpacePointQuery(cpSpace *space, cpVect point, cpFloat maxDistance, cpShapeFilter filter, cpSpacePointQueryFunc func, void *data);"
  ),

  cpSpacePointQueryNearest = list(
    include = FALSE,
    doxy = r"{/// Query the space at a point and return the nearest shape found. Returns NULL if no shapes were found.}",
    proto_text = "CP_EXPORT cpShape *cpSpacePointQueryNearest(cpSpace *space, cpVect point, cpFloat maxDistance, cpShapeFilter filter, cpPointQueryInfo *out);"
  ),

  cpSpaceSegmentQueryFunc = list(
    include = FALSE,
    doxy = r"{/// Perform a directed line segment query (like a raycast) against the space calling @c func for each shape intersected.}",
    proto_text = "CP_EXPORT void cpSpaceSegmentQuery(cpSpace *space, cpVect start, cpVect end, cpFloat radius, cpShapeFilter filter, cpSpaceSegmentQueryFunc func, void *data);"
  ),

  cpSpaceSegmentQueryFirst = list(
    include = FALSE,
    doxy = r"{/// Perform a directed line segment query (like a raycast) against the space and return the first shape hit. Returns NULL if no shapes were hit.}",
    proto_text = "CP_EXPORT cpShape *cpSpaceSegmentQueryFirst(cpSpace *space, cpVect start, cpVect end, cpFloat radius, cpShapeFilter filter, cpSegmentQueryInfo *out);"
  ),

  cpSpaceBBQuery = list(
    include = FALSE,
    doxy = r"{/// Rectangle Query callback function type.
  typedef void (*cpSpaceBBQueryFunc)(cpShape *shape, void *data);
    /// Perform a fast rectangle query on the space calling @c func for each shape found.
    /// Only the shape's bounding boxes are checked for overlap, not their full shape.}",
    proto_text = "CP_EXPORT void cpSpaceBBQuery(cpSpace *space, cpBB bb, cpShapeFilter filter, cpSpaceBBQueryFunc func, void *data);"
  ),

  cpSpaceShapeQuery = list(
    include = FALSE,
    doxy = r"{/// Query a space for any shapes overlapping the given shape and call @c func for each shape found.}",
    proto_text = "CP_EXPORT cpBool cpSpaceShapeQuery(cpSpace *space, cpShape *shape, cpSpaceShapeQueryFunc func, void *data);"
  ),

  cpSpaceEachBody = list(
    include = FALSE,
    doxy = r"{/// Call @c func for each body in the space.}",
    proto_text = "CP_EXPORT void cpSpaceEachBody(cpSpace *space, cpSpaceBodyIteratorFunc func, void *data);"
  ),

  cpSpaceEachShape = list(
    include = FALSE,
    doxy = r"{/// Call @c func for each shape in the space.}",
    proto_text = "CP_EXPORT void cpSpaceEachShape(cpSpace *space, cpSpaceShapeIteratorFunc func, void *data);"
  ),

  cpSpaceEachConstraint = list(
    include = FALSE,
    doxy = r"{/// Call @c func for each shape in the space.}",
    proto_text = "CP_EXPORT void cpSpaceEachConstraint(cpSpace *space, cpSpaceConstraintIteratorFunc func, void *data);"
  ),

  cpSpaceReindexStatic = list(
    include = TRUE,
    doxy = r"{/// Update the collision detection info for the static shapes in the space.}",
    proto_text = "CP_EXPORT void cpSpaceReindexStatic(cpSpace *space);"
  ),

  cpSpaceReindexShape = list(
    include = TRUE,
    doxy = r"{/// Update the collision detection data for a specific shape in the space.}",
    proto_text = "CP_EXPORT void cpSpaceReindexShape(cpSpace *space, cpShape *shape);"
  ),

  cpSpaceReindexShapesForBody = list(
    include = TRUE,
    doxy = r"{/// Update the collision detection data for all shapes attached to a body.}",
    proto_text = "CP_EXPORT void cpSpaceReindexShapesForBody(cpSpace *space, cpBody *body);"
  ),

  cpSpaceUseSpatialHash = list(
    include = FALSE,
    doxy = r"{/// Switch the space to use a spatial has as it's spatial index.}",
    proto_text = "CP_EXPORT void cpSpaceUseSpatialHash(cpSpace *space, cpFloat dim, int count);"
  ),

  cpSpaceStep = list(
    include = TRUE,
    doxy = r"{/// Step the space forward in time by @c dt.}",
    proto_text = "CP_EXPORT void cpSpaceStep(cpSpace *space, cpFloat dt);"
  )



)
