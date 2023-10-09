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

class get_velocityRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_velocityRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_velocityRequest
    let len;
    let data = new get_velocityRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'schunk_ezn64/get_velocityRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_velocityRequest(null);
    return resolved;
    }
};

class get_velocityResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actual_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('actual_velocity')) {
        this.actual_velocity = initObj.actual_velocity
      }
      else {
        this.actual_velocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_velocityResponse
    // Serialize message field [actual_velocity]
    bufferOffset = _serializer.float32(obj.actual_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_velocityResponse
    let len;
    let data = new get_velocityResponse(null);
    // Deserialize message field [actual_velocity]
    data.actual_velocity = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'schunk_ezn64/get_velocityResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4372144f5734356a08e3014ad0d9d0cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 actual_velocity
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_velocityResponse(null);
    if (msg.actual_velocity !== undefined) {
      resolved.actual_velocity = msg.actual_velocity;
    }
    else {
      resolved.actual_velocity = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: get_velocityRequest,
  Response: get_velocityResponse,
  md5sum() { return '4372144f5734356a08e3014ad0d9d0cf'; },
  datatype() { return 'schunk_ezn64/get_velocity'; }
};
