// Auto-generated. Do not edit!

// (in-package first_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class srv1Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num1 = null;
      this.num2 = null;
    }
    else {
      if (initObj.hasOwnProperty('num1')) {
        this.num1 = initObj.num1
      }
      else {
        this.num1 = 0;
      }
      if (initObj.hasOwnProperty('num2')) {
        this.num2 = initObj.num2
      }
      else {
        this.num2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srv1Request
    // Serialize message field [num1]
    bufferOffset = _serializer.int32(obj.num1, buffer, bufferOffset);
    // Serialize message field [num2]
    bufferOffset = _serializer.int32(obj.num2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srv1Request
    let len;
    let data = new srv1Request(null);
    // Deserialize message field [num1]
    data.num1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [num2]
    data.num2 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'first_pkg/srv1Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c68f3979e1a90aac7d1c75a1096d1e60';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 num1
    int32 num2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srv1Request(null);
    if (msg.num1 !== undefined) {
      resolved.num1 = msg.num1;
    }
    else {
      resolved.num1 = 0
    }

    if (msg.num2 !== undefined) {
      resolved.num2 = msg.num2;
    }
    else {
      resolved.num2 = 0
    }

    return resolved;
    }
};

class srv1Response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srv1Response
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srv1Response
    let len;
    let data = new srv1Response(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'first_pkg/srv1Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '034a8e20d6a306665e3a5b340fab3f09';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srv1Response(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: srv1Request,
  Response: srv1Response,
  md5sum() { return '4bac5263dd214a8605f1874d4917e35b'; },
  datatype() { return 'first_pkg/srv1'; }
};
