




cpPolyShape_header <- list(

  cpPolyShapeAlloc = list(
    include = FALSE,
    doxy = r"{/// Allocate a polygon shape.}",
    proto_text = "CP_EXPORT cpPolyShape* cpPolyShapeAlloc(void);"
  ),

  cpPolyShapeInit = list(
    include = FALSE,
    doxy = r"{/// Initialize a polygon shape with rounded corners.
    /// A convex hull will be created from the vertexes.}",
    proto_text = "CP_EXPORT cpPolyShape* cpPolyShapeInit(cpPolyShape *poly, cpBody *body, int count, const cpVect *verts, cpTransform transform, cpFloat radius);"
  ),

  cpPolyShapeInitRaw = list(
    include = FALSE,
    doxy = r"{/// Initialize a polygon shape with rounded corners.
    /// The vertexes must be convex with a counter-clockwise winding.}",
    proto_text = "CP_EXPORT cpPolyShape* cpPolyShapeInitRaw(cpPolyShape *poly, cpBody *body, int count, const cpVect *verts, cpFloat radius);"
  ),

  cpPolyShapeNew = list(
    include = FALSE,
    doxy = r"{/// Allocate and initialize a polygon shape with rounded corners.
    /// A convex hull will be created from the vertexes.}",
    proto_text = "CP_EXPORT cpShape* cpPolyShapeNew(cpBody *body, int count, const cpVect *verts, cpTransform transform, cpFloat radius);",
    post_c = "R_SetExternalPtrProtected(result_, body_); // Protect"
  ),

  cpPolyShapeNewRaw = list(
    include = FALSE,
    doxy = r"{/// Allocate and initialize a polygon shape with rounded corners.
    /// The vertexes must be convex with a counter-clockwise winding.}",
    proto_text = "CP_EXPORT cpShape* cpPolyShapeNewRaw(cpBody *body, int count, const cpVect *verts, cpFloat radius);"
  ),

  cpBoxShapeInit = list(
    include = FALSE,
    doxy = r"{/// Initialize a box shaped polygon shape with rounded corners.}",
    proto_text = "CP_EXPORT cpPolyShape* cpBoxShapeInit(cpPolyShape *poly, cpBody *body, cpFloat width, cpFloat height, cpFloat radius);"
  ),

  cpBoxShapeInit2 = list(
    include = FALSE,
    doxy = r"{/// Initialize an offset box shaped polygon shape with rounded corners.}",
    proto_text = "CP_EXPORT cpPolyShape* cpBoxShapeInit2(cpPolyShape *poly, cpBody *body, cpBB box, cpFloat radius);"
  ),

  cpBoxShapeNew = list(
    include = TRUE,
    doxy = r"{/// Allocate and initialize a box shaped polygon shape.}",
    proto_text = "CP_EXPORT cpShape* cpBoxShapeNew(cpBody *body, cpFloat width, cpFloat height, cpFloat radius);",
    post_c = "R_SetExternalPtrProtected(result_, body_); // Protect"
  ),

  cpBoxShapeNew2 = list(
    include = FALSE,
    doxy = r"{/// Allocate and initialize an offset box shaped polygon shape.}",
    proto_text = "CP_EXPORT cpShape* cpBoxShapeNew2(cpBody *body, cpBB box, cpFloat radius);",
    post_c = "R_SetExternalPtrProtected(result_, body_); // Protect"
  ),

  cpPolyShapeGetCount = list(
    include = FALSE,
    doxy = r"{/// Get the number of verts in a polygon shape.}",
    proto_text = "CP_EXPORT int cpPolyShapeGetCount(const cpShape *shape);"
  ),

  cpPolyShapeGetVert = list(
    include = FALSE,
    doxy = r"{/// Get the @c ith vertex of a polygon shape.}",
    proto_text = "CP_EXPORT cpVect cpPolyShapeGetVert(const cpShape *shape, int index);"
  ),

  cpPolyShapeGetRadius = list(
    include = FALSE,
    doxy = r"{/// Get the radius of a polygon shape.}",
    proto_text = "CP_EXPORT cpFloat cpPolyShapeGetRadius(const cpShape *shape);"
  )


)
