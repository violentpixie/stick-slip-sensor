
"use strict";

let get_position = require('./get_position.js')
let set_position = require('./set_position.js')
let get_state = require('./get_state.js')
let get_velocity = require('./get_velocity.js')
let fastStop = require('./fastStop.js')
let acknowledge_error = require('./acknowledge_error.js')
let get_error = require('./get_error.js')
let set_velocity = require('./set_velocity.js')
let stop = require('./stop.js')
let reference = require('./reference.js')

module.exports = {
  get_position: get_position,
  set_position: set_position,
  get_state: get_state,
  get_velocity: get_velocity,
  fastStop: fastStop,
  acknowledge_error: acknowledge_error,
  get_error: get_error,
  set_velocity: set_velocity,
  stop: stop,
  reference: reference,
};
