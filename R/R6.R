



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

      private$ground_objects <- list()

      private$body_radius <- numeric(0)

      private$segments = data.frame(
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
    add_segment = function(x1, y1, x2, y2, friction = 1, elasticity = 0) {

      private$segments <- rbind(
        private$segments,
        data.frame(x1, y1, x2, y2, friction)
      )

      static_body <- cpSpaceGetStaticBody(private$space)
      this_ground <- cpSegmentShapeNew(static_body, cpv(x1, y1), cpv(x2, y2), 0)
      cpShapeSetFriction(this_ground, friction)
      cpShapeSetElasticity(this_ground, elasticity = elasticity)
      cpSpaceAddShape(private$space, this_ground)

      private$ground_objects <- append(private$ground_objects, this_ground)


      invisible(self)
    },


    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' @description Get the data.frame of all current segments
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    get_segments = function() {
      private$segments
    },


    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' Add a body to the space. Currently only supports circular bodies.
    #'
    #' @param x,y initial body location
    #' @param vx,vy initial body velocity
    #' @param radius radius of body. default: 1
    #' @param mass mass of body. default: 1
    #' @param friction default: 0.7
    #' @param elasticity default: 0  (no bounce).  Valid range [0, 1]
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    add_body = function(x, y, vx = 0, vy = 0, radius = 1, mass = 1, friction = 0.7,
                        elasticity = 0) {

      moment <- cpMomentForCircle(mass, 0, radius, cpv(0, 0))
      body <- cpBodyNew(mass, moment);
      private$body <- append(private$body, body)
      cpSpaceAddBody(private$space, body)
      cpBodySetPosition(body, cpv(x, y))
      cpBodySetVelocity(body, cpv(vx, vy))


      shape = cpCircleShapeNew(body, radius, cpv(0, 0));
      cpShapeSetFriction(shape, friction)
      cpShapeSetElasticity(shape, elasticity)
      cpSpaceAddShape(private$space, shape)

      private$shape <- append(private$shape, shape)

      private$body_radius <- c(private$body_radius, radius)


      invisible(self)
    },


    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' @description Get the location of all the bodies
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    get_bodies = function() {

      xs <- numeric(length(private$body))
      ys <- numeric(length(private$body))
      for (i in seq_along(private$body)) {
        body  <- private$body[[i]]
        pos   <- cpBodyGetPosition(body)
        pos   <- as.list(pos)
        xs[i] <- pos$x
        ys[i] <- pos$y
      }

      data.frame(idx = seq_along(xs), x = xs, y = ys, r = private$body_radius)
    },


    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' Remove a body from the simulation
    #'
    #' To speed up the simulation process, you could test bodies for
    #' location and remove those you are no longer interested in.
    #'
    #'
    #' @param i index of body
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    remove_body = function(i) {
      if (i < 1 || i > length(private$body)) {
        warning("Nope")
        return(invisible(self))
      }

      cpSpaceRemoveShape(private$space, private$shape[[i]])
      cpSpaceRemoveBody(private$space, private$body[[i]])
      private$shape[[i]] <- NULL
      private$body[[i]] <- NULL

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
    segments       = NULL,
    ground_objects = NULL,
    body           = NULL,
    shape          = NULL,
    time_step      = NULL,
    body_radius    = NULL
  )
)



if (FALSE) {

  set.seed(1)
  cm <- Chipmunk$new()

  cm$add_segment(-20, 0, 20, 10)

  segment_df <- cm$get_segments()


  for (i in 1:10) {
    cm$add_body(x = runif(1, -20, 20), runif(1, 10, 50))
  }

  bodies <- cm$get_bodies()

  cm$create_ggplot() + xlim(-20, 20) + ylim(-5,)

  cm$advance(10)


}























