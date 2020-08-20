




chipmunk_header <- list(

  cpMomentForCircle = list(
    include = TRUE,
    doxy = r"{/// Calculate the moment of inertia for a circle.
    /// @c r1 and @c r2 are the inner and outer diameters. A solid circle has an inner diameter of 0.}",
    proto_text = "CP_EXPORT cpFloat cpMomentForCircle(cpFloat m, cpFloat r1, cpFloat r2, cpVect offset);"
  ),

  cpAreaForCircle = list(
    include = TRUE,
    doxy = r"{/// Calculate area of a hollow circle.
  /// @c r1 and @c r2 are the inner and outer diameters. A solid circle has an inner diameter of 0.}",
    proto_text = "CP_EXPORT cpFloat cpAreaForCircle(cpFloat r1, cpFloat r2);"
  ),

  cpMomentForSegment = list(
    include = TRUE,
    doxy = r"{/// Calculate the moment of inertia for a line segment.
  /// Beveling radius is not supported.}",
    proto_text = "CP_EXPORT cpFloat cpMomentForSegment(cpFloat m, cpVect a, cpVect b, cpFloat radius);"
  ),

  cpAreaForSegment = list(
    include = TRUE,
    doxy = r"{/// Calculate the area of a fattened (capsule shaped) line segment.}",
    proto_text = "CP_EXPORT cpFloat cpAreaForSegment(cpVect a, cpVect b, cpFloat radius);"
  ),

  cpMomentForPoly = list(
    include = TRUE,
    doxy = r"{/// Calculate the moment of inertia for a solid polygon shape assuming it's center of gravity is at it's centroid. The offset is added to each vertex.}",
    proto_text = "CP_EXPORT cpFloat cpMomentForPoly(cpFloat m, int count, const cpVect *verts, cpVect offset, cpFloat radius);"
  ),

  cpAreaForPoly = list(
    include = TRUE,
    doxy = r"{/// Calculate the signed area of a polygon. A Clockwise winding gives positive area.
  /// This is probably backwards from what you expect, but matches Chipmunk's the winding for poly shapes.}",
    proto_text = "CP_EXPORT cpFloat cpAreaForPoly(const int count, const cpVect *verts, cpFloat radius);"
  ),

  cpCentroidForPoly = list(
    include = TRUE,
    doxy = r"{/// Calculate the natural centroid of a polygon.}",
    proto_text = "CP_EXPORT cpVect cpCentroidForPoly(const int count, const cpVect *verts);"
  ),

  cpMomentForBox = list(
    include = TRUE,
    doxy = r"{/// Calculate the moment of inertia for a solid box.}",
    proto_text = "CP_EXPORT cpFloat cpMomentForBox(cpFloat m, cpFloat width, cpFloat height);"
  ),

  cpMomentForBox2 = list(
    include = FALSE,
    doxy = r"{/// Calculate the moment of inertia for a solid box.}",
    proto_text = "CP_EXPORT cpFloat cpMomentForBox2(cpFloat m, cpBB box);"
  ),

  cpConvexHull = list(
    include = FALSE,
    doxy = r"{/// Calculate the convex hull of a given set of points. Returns the count of points in the hull.
/// @c result must be a pointer to a @c cpVect array with at least @c count elements. If @c verts == @c result, then @c verts will be reduced inplace.
/// @c first is an optional pointer to an integer to store where the first vertex in the hull came from (i.e. verts[first] == result[0])
/// @c tol is the allowed amount to shrink the hull when simplifying it. A tolerance of 0.0 creates an exact hull.}",
    proto_text = "CP_EXPORT int cpConvexHull(int count, const cpVect *verts, cpVect *result, int *first, cpFloat tol);"
  )
)
