
# chipmunkcore 0.1.5

* Internal: regenerate C code using latest `{cheddar}` package.
    * Better checking of external pointers before unpacking in C

# chipmunkcore 0.1.4

* Add `get_body_state(bodies)` which will create a data.frame with the current
state of each body in the given list of `bodies`. i.e. position, velocity, 
force, angle, angular velocity and torque.

# chipmunkcore 0.1.3

* API: move R6 higher-level wrapper to its own package [chipmunkbasic](https://github.com/coolbutuseless/chipmunkbasic)
* Features: exposed damped spring constraint

# chipmunkcore 0.1.2

* Features: Added box object
* Internal: memory managment fix. remove shapes and bodies from a space before
  freeing them.  This fixes a segfault.

# chipmunkcore 0.1.1

* Feature: Added elasticity controls

# chipmunkcore 0.1.0

* Initial release
