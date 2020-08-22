



#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Chipmunk class
#'
#' @import R6
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Chipmunk <- R6::R6Class(
  "Chipmunk",

  public = list(

    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' @description Initialize the simulation space
    #'
    #' @param gravity vector object indication direction and strength
    #'        of gravity. Default: \code{cpv(0, -100)}
    #' @param time_step simulation step size. smaller is more accurate.
    #'        Default: 0.01
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    initialize = function(gravity = cpv(0, -100), time_step = 0.01) {
      private$space <- cpSpaceNew()
      cpSpaceSetGravity(private$space, gravity)

      private$time_step = time_step

      private$static_segments <- list()

      private$circle_radii <- numeric(0)

      private$static_segments_df = data.frame(
        x1 = numeric(0),
        y1 = numeric(0),
        x2 = numeric(0),
        y2 = numeric(0),
        friction = numeric(0)
      )

      invisible(self)
    },


    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' Add a static segment
    #'
    #' @param x1,y1,x2,y2 segment end points
    #' @param friction friction along ground. default 1.
    #' @param elasticity default: 0 (no bounce)
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    add_static_segment = function(x1, y1, x2, y2, friction = 1, elasticity = 0) {

      private$static_segments_df <- rbind(
        private$static_segments_df,
        data.frame(x1, y1, x2, y2, friction)
      )

      static_body <- cpSpaceGetStaticBody(private$space)
      static_segment <- cpSegmentShapeNew(static_body, cpv(x1, y1), cpv(x2, y2), 0)
      cpShapeSetFriction(static_segment, friction)
      cpShapeSetElasticity(static_segment, elasticity = elasticity)
      cpSpaceAddShape(private$space, static_segment)

      private$static_segments <- append(private$static_segments, static_segment)


      invisible(self)
    },


    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' @description Get the data.frame of all current segments
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    get_static_segments = function() {
      private$static_segments_df
    },


    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' Add a circular body to the space
    #'
    #' @param x,y initial body location
    #' @param vx,vy initial body velocity
    #' @param radius radius of body. default: 1
    #' @param mass mass of body. default: 1
    #' @param friction default: 0.7
    #' @param elasticity default: 0  (no bounce).  Valid range [0, 1]
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    add_circle = function(x, y, vx = 0, vy = 0, radius = 1, mass = 1, friction = 0.7,
                          elasticity = 0) {

      moment                <- cpMomentForCircle(mass, 0, radius, cpv(0, 0))
      body                  <- cpBodyNew(mass, moment);
      private$circle_bodies <- append(private$circle_bodies, body)
      cpBodySetPosition(body, cpv(x, y))
      cpBodySetVelocity(body, cpv(vx, vy))
      cpSpaceAddBody(private$space, body)


      shape = cpCircleShapeNew(body, radius, cpv(0, 0));
      cpShapeSetFriction(shape, friction)
      cpShapeSetElasticity(shape, elasticity)
      cpSpaceAddShape(private$space, shape)

      private$circle_shapes <- append(private$circle_shapes, shape)

      private$circle_radii <- c(private$circle_radii, radius)


      invisible(self)
    },



    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' @description Get the location of all the bodies
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    get_circles = function() {

      xs <- numeric(length(private$circle_bodies))
      ys <- numeric(length(private$circle_bodies))
      for (i in seq_along(private$circle_bodies)) {
        body  <- private$circle_bodies[[i]]
        pos   <- cpBodyGetPosition(body)
        pos   <- as.list(pos)
        xs[i] <- pos$x
        ys[i] <- pos$y
      }

      data.frame(idx = seq_along(xs), x = xs, y = ys, r = private$circle_radii)
    },


    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' Add a box body to the space
    #'
    #' @param x,y initial body location
    #' @param vx,vy initial body velocity
    #' @param width,height body width and height
    #' @param angle rotation angle in degrees. default 0
    #' @param radius radius of rounded corner
    #' @param mass mass of body. default: 1
    #' @param friction default: 0.7
    #' @param elasticity default: 0  (no bounce).  Valid range [0, 1]
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    add_box = function(x, y, vx = 0, vy = 0, width = 1.73, height = 1, angle = 0,
                          radius = 0.05,
                          mass = 1, friction = 0.7, elasticity = 0) {

      moment             <- cpMomentForBox(mass, width, height)
      body               <- cpBodyNew(mass, moment);
      private$box_bodies <- append(private$box_bodies, body)
      cpSpaceAddBody(private$space, body)
      cpBodySetPosition(body, cpv( x,  y))
      cpBodySetVelocity(body, cpv(vx, vy))
      cpBodySetAngle   (body, angle * pi/180)


      shape <- cpBoxShapeNew(body, width, height, radius)
      cpShapeSetFriction(shape, friction)
      cpShapeSetElasticity(shape, elasticity)
      cpSpaceAddShape(private$space, shape)

      private$box_shapes <- append(private$box_shapes, shape)
      private$box_widths <- c(private$box_widths , width )
      private$box_heights<- c(private$box_heights, height)


      invisible(self)
    },


    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' @description Get the location of all the bodies
    #'
    #' @return a data.frame with idx, width, height and rotation angle (radians)
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    get_boxes = function() {

      xs <- numeric(length(private$box_bodies))
      ys <- numeric(length(private$box_bodies))
      rs <- numeric(length(private$box_bodies))

      for (i in seq_along(private$box_bodies)) {
        body  <- private$box_bodies[[i]]
        pos   <- cpBodyGetPosition(body)
        pos   <- as.list(pos)
        xs[i] <- pos$x
        ys[i] <- pos$y
        rs[i] <- cpBodyGetAngle(body)
      }

      data.frame(
        idx    = seq_along(xs),
        x      = xs,
        y      = ys,
        angle  = rs,
        width  = private$box_widths,
        height = private$box_heights
      )
    },



    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' @description Get the location of all the boxes as a list of corner vertices
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    get_boxes_as_polygons = function() {

      bodies <- self$get_boxes()

      bodies <- transform(
        bodies,
        x1 = - width/2,
        x2 = + width/2,
        x3 = + width/2,
        x4 = - width/2,

        y1 = - height/2,
        y2 = - height/2,
        y3 = + height/2,
        y4 = + height/2
      )

      b1 <- transform(bodies, xs = x + x1 * cos(angle) - y1 * sin(angle), ys = y + x1 * sin(angle) + y1 * cos(angle), vertex = 1L)
      b2 <- transform(bodies, xs = x + x2 * cos(angle) - y2 * sin(angle), ys = y + x2 * sin(angle) + y2 * cos(angle), vertex = 2L)
      b3 <- transform(bodies, xs = x + x3 * cos(angle) - y3 * sin(angle), ys = y + x3 * sin(angle) + y3 * cos(angle), vertex = 3L)
      b4 <- transform(bodies, xs = x + x4 * cos(angle) - y4 * sin(angle), ys = y + x4 * sin(angle) + y4 * cos(angle), vertex = 4L)

      rects <- rbind(b1, b2, b3, b4)[, c('idx', 'vertex', 'xs', 'ys')]
      names(rects) <- c('idx', 'vertex', 'x', 'y')

      rects[with(rects,order(idx, vertex)),]
    },



    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' Remove a circle from the simulation
    #'
    #' To speed up the simulation process, you could test bodies for
    #' location and remove those you are no longer interested in.
    #'
    #'
    #' @param idx index of circle to remove
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    remove_circle = function(idx) {
      if (idx < 1 || idx > length(private$circle_bodies)) {
        warning("Nope")
        return(invisible(self))
      }

      cpSpaceRemoveShape(private$space, private$circle_shapes[[idx]])
      cpSpaceRemoveBody (private$space, private$circle_bodies[[idx]])
      private$circle_shapes[[idx]] <- NULL
      private$circle_bodies[[idx]] <- NULL

      invisible(self)
    },


    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' Advance the simulation by N timesteps
    #'
    #' @param N number of time steps to advance
    #'
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    advance = function(N = 1) {

      for (i in seq_len(N)) {
        cpSpaceStep(private$space, private$time_step)
      }

      invisible(self)
    }

  ),

  private = list(
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    # @field space the chipmunk simulation space. Make private.
    # @field segments segments added by the user. Make private.
    # @field ground_objects master list of ground objects. Make private.
    # @field body list of all body
    # @field shape list of shapes assigned to each body
    # @field time_step simulation time_step
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    space          = NULL,
    time_step      = NULL,

    circle_bodies  = NULL,
    circle_shapes  = NULL,
    circle_radii   = NULL,

    box_bodies     = NULL,
    box_shapes     = NULL,
    box_widths     = NULL,
    box_heights    = NULL,

    static_segments_df = NULL,
    static_segments    = NULL
  )
)






















