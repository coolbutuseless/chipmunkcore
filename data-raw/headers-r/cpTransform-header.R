




cpTransform_header <- list(

  cpTransformNew = list(
    include = TRUE,
    doxy = r"{/// Construct a new transform matrix.
    /// (a, b) is the x basis vector.
    /// (c, d) is the y basis vector.
    /// (tx, ty) is the translation.}",
    proto_text = "static inline cpTransform
  cpTransformNew(cpFloat a, cpFloat b, cpFloat c, cpFloat d, cpFloat tx, cpFloat ty)"
  ),


  cpTransformNewTranspose = list(
    include = FALSE,
    doxy = r"{/// Construct a new transform matrix in transposed order.}",
    proto_text = "static inline cpTransform
  cpTransformNewTranspose(cpFloat a, cpFloat c, cpFloat tx, cpFloat b, cpFloat d, cpFloat ty)"
  ),


  cpTransformInverse = list(
    include = FALSE,
    doxy = r"{/// Get the inverse of a transform matrix.}",
    proto_text = "static inline cpTransform
  cpTransformInverse(cpTransform t)"
  ),


  cpTransformMult = list(
    include = TRUE,
    doxy = r"{/// Multiply two transformation matrices.}",
    proto_text = "static inline cpTransform
  cpTransformMult(cpTransform t1, cpTransform t2)"
  ),


  cpTransformPoint = list(
    include = FALSE,
    doxy = r"{/// Transform an absolute point. (i.e. a vertex)}",
    proto_text = "static inline cpVect
  cpTransformPoint(cpTransform t, cpVect p)"
  ),


  cpTransformVect = list(
    include = FALSE,
    doxy = r"{/// Transform a vector (i.e. a normal)}",
    proto_text = "static inline cpVect
  cpTransformVect(cpTransform t, cpVect v)"
  ),


  cpTransformbBB = list(
    include = FALSE,
    doxy = r"{/// Transform a cpBB.}",
    proto_text = "static inline cpBB
  cpTransformbBB(cpTransform t, cpBB bb)"
  ),


  cpTransformTranslate = list(
    include = TRUE,
    doxy = r"{/// Create a transation matrix.}",
    proto_text = "static inline cpTransform
  cpTransformTranslate(cpVect translate)"
  ),


  cpTransformScale = list(
    include = TRUE,
    doxy = r"{/// Create a scale matrix.}",
    proto_text = "static inline cpTransform
  cpTransformScale(cpFloat scaleX, cpFloat scaleY)"
  ),


  cpTransformRotate = list(
    include = TRUE,
    doxy = r"{/// Create a rotation matrix.}",
    proto_text = "static inline cpTransform
  cpTransformRotate(cpFloat radians)"
  ),


  cpTransformRigid = list(
    include = TRUE,
    doxy = r"{/// Create a rigid transformation matrix. (transation + rotation)}",
    proto_text = "static inline cpTransform
  cpTransformRigid(cpVect translate, cpFloat radians)"
  ),


  cpTransformRigidInverse = list(
    include = FALSE,
    doxy = r"{/// Fast inverse of a rigid transformation matrix.}",
    proto_text = "static inline cpTransform
  cpTransformRigidInverse(cpTransform t)"
  ),


  cpTransformWrap = list(
    include = FALSE,
    doxy = r"{cpTransformWrap}",
    proto_text = "static inline cpTransform
  cpTransformWrap(cpTransform outer, cpTransform inner)"
  ),


  cpTransformWrapInverse = list(
    include = FALSE,
    doxy = r"{cpTransformWrapInverse}",
    proto_text = "static inline cpTransform
  cpTransformWrapInverse(cpTransform outer, cpTransform inner)"
  ),


  cpTransformOrtho = list(
    include = FALSE,
    doxy = r"{cpTransformOrtho}",
    proto_text = "static inline cpTransform
  cpTransformOrtho(cpBB bb)"
  ),


  cpTransformBoneScale = list(
    include = FALSE,
    doxy = r"{cpTransformBoneScale}",
    proto_text = "static inline cpTransform
  cpTransformBoneScale(cpVect v0, cpVect v1)"
  ),


  cpTransformAxialScale = list(
    include = FALSE,
    doxy = r"{cpTransformAxialScale}",
    proto_text = "static inline cpTransform
  cpTransformAxialScale(cpVect axis, cpVect pivot, cpFloat scale)"
  )
)
