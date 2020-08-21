




cpShape_header <- list(

  cpShapeDestroy = list(
    include = FALSE,
    doxy = r"{/// Destroy a shape.}",
    proto_text = "CP_EXPORT void cpShapeDestroy(cpShape *shape);"
  ),

  cpShapeFree = list(
    include = FALSE,
    doxy = r"{/// Destroy and Free a shape.}",
    proto_text = "CP_EXPORT void cpShapeFree(cpShape *shape);"
  ),

  cpShapeCacheBB = list(
    include = FALSE,
    doxy = r"{/// Update, cache and return the bounding box of a shape based on the body it's attached to.}",
    proto_text = "CP_EXPORT cpBB cpShapeCacheBB(cpShape *shape);"
  ),

  cpShapeUpdate = list(
    include = FALSE,
    doxy = r"{/// Update, cache and return the bounding box of a shape with an explicit transformation.}",
    proto_text = "CP_EXPORT cpBB cpShapeUpdate(cpShape *shape, cpTransform transform);"
  ),

  cpShapePointQuery = list(
    include = FALSE,
    doxy = r"{/// Perform a nearest point query. It finds the closest point on the surface of shape to a specific point.
    /// The value returned is the distance between the points. A negative distance means the point is inside the shape.}",
    proto_text = "CP_EXPORT cpFloat cpShapePointQuery(const cpShape *shape, cpVect p, cpPointQueryInfo *out);"
  ),

  cpShapeSegmentQuery = list(
    include = FALSE,
    doxy = r"{/// Perform a segment query against a shape. @c info must be a pointer to a valid cpSegmentQueryInfo structure}",
    proto_text = "CP_EXPORT cpBool cpShapeSegmentQuery(const cpShape *shape, cpVect a, cpVect b, cpFloat radius, cpSegmentQueryInfo *info);"
  ),

  cpShapesCollide = list(
    include = FALSE,
    doxy = r"{/// Return contact information about two shapes.}",
    proto_text = "CP_EXPORT cpContactPointSet cpShapesCollide(const cpShape *a, const cpShape *b);"
  ),

  cpShapeGetSpace = list(
    include = FALSE,
    doxy = r"{/// The cpSpace this body is added to.}",
    proto_text = "CP_EXPORT cpSpace* cpShapeGetSpace(const cpShape *shape);"
  ),

  cpShapeGetBody = list(
    include = FALSE,
    doxy = r"{/// The cpBody this shape is connected to.}",
    proto_text = "CP_EXPORT cpBody* cpShapeGetBody(const cpShape *shape);"
  ),

  cpShapeSetBody = list(
    include = FALSE,
    doxy = r"{/// Set the cpBody this shape is connected to.
    /// Can only be used if the shape is not currently added to a space.}",
    proto_text = "CP_EXPORT void cpShapeSetBody(cpShape *shape, cpBody *body);"
  ),

  cpShapeGetMass = list(
    include = FALSE,
    doxy = r"{/// Get the mass of the shape if you are having Chipmunk calculate mass properties for you.}",
    proto_text = "CP_EXPORT cpFloat cpShapeGetMass(cpShape *shape);"
  ),

  cpShapeSetMass = list(
    include = TRUE,
    doxy = r"{/// Set the mass of this shape to have Chipmunk calculate mass properties for you.}",
    proto_text = "CP_EXPORT void cpShapeSetMass(cpShape *shape, cpFloat mass);"
  ),

  cpShapeGetDensity = list(
    include = FALSE,
    doxy = r"{/// Get the density of the shape if you are having Chipmunk calculate mass properties for you.}",
    proto_text = "CP_EXPORT cpFloat cpShapeGetDensity(cpShape *shape);"
  ),

  cpShapeSetDensity = list(
    include = TRUE,
    doxy = r"{/// Set the density  of this shape to have Chipmunk calculate mass properties for you.}",
    proto_text = "CP_EXPORT void cpShapeSetDensity(cpShape *shape, cpFloat density);"
  ),

  cpShapeGetMoment = list(
    include = TRUE,
    doxy = r"{/// Get the calculated moment of inertia for this shape.}",
    proto_text = "CP_EXPORT cpFloat cpShapeGetMoment(cpShape *shape);"
  ),

  cpShapeGetArea = list(
    include = TRUE,
    doxy = r"{/// Get the calculated area of this shape.}",
    proto_text = "CP_EXPORT cpFloat cpShapeGetArea(cpShape *shape);"
  ),

  cpShapeGetCenterOfGravity = list(
    include = TRUE,
    doxy = r"{/// Get the centroid of this shape.}",
    proto_text = "CP_EXPORT cpVect cpShapeGetCenterOfGravity(cpShape *shape);"
  ),

  cpShapeGetBB = list(
    include = FALSE,
    doxy = r"{/// Get the bounding box that contains the shape given it's current position and angle.}",
    proto_text = "CP_EXPORT cpBB cpShapeGetBB(const cpShape *shape);"
  ),

  cpShapeGetSensor = list(
    include = FALSE,
    doxy = r"{/// Get if the shape is set to be a sensor or not.}",
    proto_text = "CP_EXPORT cpBool cpShapeGetSensor(const cpShape *shape);"
  ),

  cpShapeSetSensor = list(
    include = TRUE,
    doxy = r"{/// Set if the shape is a sensor or not.}",
    proto_text = "CP_EXPORT void cpShapeSetSensor(cpShape *shape, cpBool sensor);
  "
  ),

  cpShapeGetElasticity = list(
    include = FALSE,
    doxy = r"{/// Get the elasticity of this shape.}",
    proto_text = "CP_EXPORT cpFloat cpShapeGetElasticity(const cpShape *shape);"
  ),

  cpShapeSetElasticity = list(
    include = TRUE,
    doxy = r"{/// Set the elasticity of this shape.}",
    proto_text = "CP_EXPORT void cpShapeSetElasticity(cpShape *shape, cpFloat elasticity);"
  ),

  cpShapeGetFriction = list(
    include = FALSE,
    doxy = r"{/// Get the friction of this shape.}",
    proto_text = "CP_EXPORT cpFloat cpShapeGetFriction(const cpShape *shape);"
  ),

  cpShapeSetFriction = list(
    include = TRUE,
    doxy = r"{/// Set the friction of this shape.}",
    proto_text = "CP_EXPORT void cpShapeSetFriction(cpShape *shape, cpFloat friction);"
  ),

  cpShapeGetSurfaceVelocity = list(
    include = FALSE,
    doxy = r"{/// Get the surface velocity of this shape.}",
    proto_text = "CP_EXPORT cpVect cpShapeGetSurfaceVelocity(const cpShape *shape);"
  ),

  cpShapeSetSurfaceVelocity = list(
    include = FALSE,
    doxy = r"{/// Set the surface velocity of this shape.}",
    proto_text = "CP_EXPORT void cpShapeSetSurfaceVelocity(cpShape *shape, cpVect surfaceVelocity);"
  ),

  cpShapeGetUserData = list(
    include = FALSE,
    doxy = r"{/// Get the user definable data pointer of this shape.}",
    proto_text = "CP_EXPORT cpDataPointer cpShapeGetUserData(const cpShape *shape);"
  ),

  cpShapeSetUserData = list(
    include = FALSE,
    doxy = r"{/// Set the user definable data pointer of this shape.}",
    proto_text = "CP_EXPORT void cpShapeSetUserData(cpShape *shape, cpDataPointer userData);"
  ),

  cpCollisionType = list(
    include = FALSE,
    doxy = r"{/// Set the collision type of this shape.}",
    proto_text = "CP_EXPORT cpCollisionType cpShapeGetCollisionType(const cpShape *shape);"
  ),

  cpShapeSetCollisionType = list(
    include = FALSE,
    doxy = r"{/// Get the collision type of this shape.}",
    proto_text = "CP_EXPORT void cpShapeSetCollisionType(cpShape *shape, cpCollisionType collisionType);"
  ),

  cpShapeGetFilter = list(
    include = FALSE,
    doxy = r"{/// Get the collision filtering parameters of this shape.}",
    proto_text = "CP_EXPORT cpShapeFilter cpShapeGetFilter(const cpShape *shape);"
  ),

  cpShapeSetFilter = list(
    include = FALSE,
    doxy = r"{/// Set the collision filtering parameters of this shape.}",
    proto_text = "CP_EXPORT void cpShapeSetFilter(cpShape *shape, cpShapeFilter filter);"
  ),

  cpCircleShapeInit = list(
    include = FALSE,
    doxy = r"{/// Allocate a circle shape.}",
    proto_text = "CP_EXPORT cpCircleShape* cpCircleShapeAlloc(void);
    /// Initialize a circle shape.}",
    proto_text = "CP_EXPORT cpCircleShape* cpCircleShapeInit(cpCircleShape *circle, cpBody *body, cpFloat radius, cpVect offset);"
  ),

  cpCircleShapeNew = list(
    include = TRUE,
    doxy = r"{/// Allocate and initialize a circle shape.}",
    proto_text = "CP_EXPORT cpShape* cpCircleShapeNew(cpBody *body, cpFloat radius, cpVect offset);",
    post_c = "R_SetExternalPtrProtected(result_, body_); // Protect"
  ),

  cpCircleShapeGetOffset = list(
    include = FALSE,
    doxy = r"{/// Get the offset of a circle shape.}",
    proto_text = "CP_EXPORT cpVect cpCircleShapeGetOffset(const cpShape *shape);"
  ),

  cpCircleShapeGetRadius = list(
    include = FALSE,
    doxy = r"{/// Get the radius of a circle shape.}",
    proto_text = "CP_EXPORT cpFloat cpCircleShapeGetRadius(const cpShape *shape);"
  ),

  cpSegmentShapeAlloc = list(
    include = FALSE,
    doxy = r"{/// Allocate a segment shape.}",
    proto_text = "CP_EXPORT cpSegmentShape* cpSegmentShapeAlloc(void);"
  ),

  cpSegmentShapeInit = list(
    include = FALSE,
    doxy = r"{/// Initialize a segment shape.}",
    proto_text = "CP_EXPORT cpSegmentShape* cpSegmentShapeInit(cpSegmentShape *seg, cpBody *body, cpVect a, cpVect b, cpFloat radius);"
  ),

  cpSegmentShapeNew = list(
    include = TRUE,
    doxy = r"{/// Allocate and initialize a segment shape.}",
    proto_text = "CP_EXPORT cpShape* cpSegmentShapeNew(cpBody *body, cpVect a, cpVect b, cpFloat radius);",
    post_c = "R_SetExternalPtrProtected(result_, body_); // Protect"
  ),

  cpSegmentShapeSetNeighbors = list(
    include = FALSE,
    doxy = r"{/// Let Chipmunk know about the geometry of adjacent segments to avoid colliding with endcaps.}",
    proto_text = "CP_EXPORT void cpSegmentShapeSetNeighbors(cpShape *shape, cpVect prev, cpVect next);"
  ),

  cpSegmentShapeGetA = list(
    include = FALSE,
    doxy = r"{/// Get the first endpoint of a segment shape.}",
    proto_text = "CP_EXPORT cpVect cpSegmentShapeGetA(const cpShape *shape);"
  ),

  cpSegmentShapeGetB = list(
    include = FALSE,
    doxy = r"{/// Get the second endpoint of a segment shape.}",
    proto_text = "CP_EXPORT cpVect cpSegmentShapeGetB(const cpShape *shape);"
  ),

  cpSegmentShapeGetNormal = list(
    include = FALSE,
    doxy = r"{/// Get the normal of a segment shape.}",
    proto_text = "CP_EXPORT cpVect cpSegmentShapeGetNormal(const cpShape *shape);"
  ),

  cpSegmentShapeGetRadius = list(
    include = FALSE,
    doxy = r"{/// Get the first endpoint of a segment shape.}",
    proto_text = "CP_EXPORT cpFloat cpSegmentShapeGetRadius(const cpShape *shape);"
  )



)
