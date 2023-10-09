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

class set_positionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_position = null;
      this.goal_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_position')) {
        this.goal_position = initObj.goal_position
      }
      else {
        this.goal_position = 0.0;
      }
      if (initObj.hasOwnProperty('goal_speed')) {
        this.goal_speed = initObj.goal_speed
      }
      else {
        this.goal_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_positionRequest
    // Serialize message field [goal_position]
    bufferOffset = _serializer.float32(obj.goal_position, buffer, bufferOffset);
    // Serialize message field [goal_speed]
    bufferOffset = _serializer.float32(obj.goal_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_positionRequest
    let len;
    let data = new set_positionRequest(null);
    // Deserialize message field [goal_position]
    data.goal_position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [goal_speed]
    data.goal_speed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'schunk_ezn64/set_positionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '54cc2e43b8e2c9aa2278c4505075ea13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 goal_position
    float32 goal_speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_positionRequest(null);
    if (msg.goal_position !== undefined) {
      resolved.goal_position = msg.goal_position;
    }
    else {
      resolved.goal_position = 0.0
    }

    if (msg.goal_speed !== undefined) {
      resolved.goal_speed = msg.goal_speed;
    }
    else {
      resolved.goal_speed = 0.0
    }

    return resolved;
    }
};

class set_positionResponse {
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
    // Serializes a message object of type set_positionResponse
    // Serialize message field [goal_accepted]
    bufferOffset = _serializer.bool(obj.goal_accepted, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_positionResponse
    let len;
    let data = new set_positionResponse(null);
    // Deserialize message field [goal_accepted]
    data.goal_accepted = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'schunk_ezn64/set_positionResponse';
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
    const resolved = new set_positionResponse(null);
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
  Request: set_positionRequest,
  Response: set_positionResponse,
  md5sum() { return '9d30216bd0f9755a614e054b1e5b684d'; },
  datatype() { return 'schunk_ezn64/set_position'; }
};
