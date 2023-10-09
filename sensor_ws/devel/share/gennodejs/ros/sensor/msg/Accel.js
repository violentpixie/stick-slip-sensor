// Auto-generated. Do not edit!

// (in-package sensor.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Accel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.accel1_x = null;
      this.accel1_y = null;
    }
    else {
      if (initObj.hasOwnProperty('accel1_x')) {
        this.accel1_x = initObj.accel1_x
      }
      else {
        this.accel1_x = 0.0;
      }
      if (initObj.hasOwnProperty('accel1_y')) {
        this.accel1_y = initObj.accel1_y
      }
      else {
        this.accel1_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Accel
    // Serialize message field [accel1_x]
    bufferOffset = _serializer.float64(obj.accel1_x, buffer, bufferOffset);
    // Serialize message field [accel1_y]
    bufferOffset = _serializer.float64(obj.accel1_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Accel
    let len;
    let data = new Accel(null);
    // Deserialize message field [accel1_x]
    data.accel1_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [accel1_y]
    data.accel1_y = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor/Accel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '136544c7034858b5ba440b7169a0f268';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 accel1_x 
    float64 accel1_y 
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Accel(null);
    if (msg.accel1_x !== undefined) {
      resolved.accel1_x = msg.accel1_x;
    }
    else {
      resolved.accel1_x = 0.0
    }

    if (msg.accel1_y !== undefined) {
      resolved.accel1_y = msg.accel1_y;
    }
    else {
      resolved.accel1_y = 0.0
    }

    return resolved;
    }
};

module.exports = Accel;
