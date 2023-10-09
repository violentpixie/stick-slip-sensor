// Auto-generated. Do not edit!

// (in-package schunk_ezn64.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class set_velocityRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_velocity')) {
        this.goal_velocity = initObj.goal_velocity
      }
      else {
        this.goal_velocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_velocityRequest
    // Serialize message field [goal_velocity]
    bufferOffset = _serializer.float32(obj.goal_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_velocityRequest
    let len;
    let data = new set_velocityRequest(null);
    // Deserialize message field [goal_velocity]
    data.goal_velocity = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'schunk_ezn64/set_velocityRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f59aa891e42d60388f6c495cda94909c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 goal_velocity
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_velocityRequest(null);
    if (msg.goal_velocity !== undefined) {
      resolved.goal_velocity = msg.goal_velocity;
    }
    else {
      resolved.goal_velocity = 0.0
    }

    return resolved;
    }
};

class set_velocityResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_accepted = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_accepted')) {
        this.goal_accepted = initObj.goal_accepted
      }
      else {
        this.goal_accepted = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_velocityResponse
    // Serialize message field [goal_accepted]
    bufferOffset = _serializer.bool(obj.goal_accepted, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_velocityResponse
    let len;
    let data = new set_velocityResponse(null);
    // Deserialize message field [goal_accepted]
    data.goal_accepted = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'schunk_ezn64/set_velocityResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a5ca3c440eebef45662a29c35d8e42e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool goal_accepted
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_velocityResponse(null);
    if (msg.goal_accepted !== undefined) {
      resolved.goal_accepted = msg.goal_accepted;
    }
    else {
      resolved.goal_accepted = false
    }

    return resolved;
    }
};

module.exports = {
  Request: set_velocityRequest,
  Response: set_velocityResponse,
  md5sum() { return '8bcbe89faecc3b1502a1b95a8574cab4'; },
  datatype() { return 'schunk_ezn64/set_velocity'; }
};
