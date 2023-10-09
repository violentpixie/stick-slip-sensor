// Auto-generated. Do not edit!

// (in-package wittenstein_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class wittenstein {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fx = null;
      this.fy = null;
      this.fz = null;
    }
    else {
      if (initObj.hasOwnProperty('fx')) {
        this.fx = initObj.fx
      }
      else {
        this.fx = 0.0;
      }
      if (initObj.hasOwnProperty('fy')) {
        this.fy = initObj.fy
      }
      else {
        this.fy = 0.0;
      }
      if (initObj.hasOwnProperty('fz')) {
        this.fz = initObj.fz
      }
      else {
        this.fz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type wittenstein
    // Serialize message field [fx]
    bufferOffset = _serializer.float64(obj.fx, buffer, bufferOffset);
    // Serialize message field [fy]
    bufferOffset = _serializer.float64(obj.fy, buffer, bufferOffset);
    // Serialize message field [fz]
    bufferOffset = _serializer.float64(obj.fz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type wittenstein
    let len;
    let data = new wittenstein(null);
    // Deserialize message field [fx]
    data.fx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fy]
    data.fy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fz]
    data.fz = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wittenstein_msgs/wittenstein';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7b2ae941c5b15bd5e80a4da6c8efa41';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 fx
    float64 fy
    float64 fz
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new wittenstein(null);
    if (msg.fx !== undefined) {
      resolved.fx = msg.fx;
    }
    else {
      resolved.fx = 0.0
    }

    if (msg.fy !== undefined) {
      resolved.fy = msg.fy;
    }
    else {
      resolved.fy = 0.0
    }

    if (msg.fz !== undefined) {
      resolved.fz = msg.fz;
    }
    else {
      resolved.fz = 0.0
    }

    return resolved;
    }
};

module.exports = wittenstein;
