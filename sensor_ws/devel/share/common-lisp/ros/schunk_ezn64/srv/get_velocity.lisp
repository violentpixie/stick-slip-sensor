; Auto-generated. Do not edit!


(cl:in-package schunk_ezn64-srv)


;//! \htmlinclude get_velocity-request.msg.html

(cl:defclass <get_velocity-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass get_velocity-request (<get_velocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_velocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_velocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name schunk_ezn64-srv:<get_velocity-request> is deprecated: use schunk_ezn64-srv:get_velocity-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_velocity-request>) ostream)
  "Serializes a message object of type '<get_velocity-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_velocity-request>) istream)
  "Deserializes a message object of type '<get_velocity-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_velocity-request>)))
  "Returns string type for a service object of type '<get_velocity-request>"
  "schunk_ezn64/get_velocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_velocity-request)))
  "Returns string type for a service object of type 'get_velocity-request"
  "schunk_ezn64/get_velocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_velocity-request>)))
  "Returns md5sum for a message object of type '<get_velocity-request>"
  "4372144f5734356a08e3014ad0d9d0cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_velocity-request)))
  "Returns md5sum for a message object of type 'get_velocity-request"
  "4372144f5734356a08e3014ad0d9d0cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_velocity-request>)))
  "Returns full string definition for message of type '<get_velocity-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_velocity-request)))
  "Returns full string definition for message of type 'get_velocity-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_velocity-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_velocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_velocity-request
))
;//! \htmlinclude get_velocity-response.msg.html

(cl:defclass <get_velocity-response> (roslisp-msg-protocol:ros-message)
  ((actual_velocity
    :reader actual_velocity
    :initarg :actual_velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass get_velocity-response (<get_velocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_velocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_velocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name schunk_ezn64-srv:<get_velocity-response> is deprecated: use schunk_ezn64-srv:get_velocity-response instead.")))

(cl:ensure-generic-function 'actual_velocity-val :lambda-list '(m))
(cl:defmethod actual_velocity-val ((m <get_velocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_ezn64-srv:actual_velocity-val is deprecated.  Use schunk_ezn64-srv:actual_velocity instead.")
  (actual_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_velocity-response>) ostream)
  "Serializes a message object of type '<get_velocity-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'actual_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_velocity-response>) istream)
  "Deserializes a message object of type '<get_velocity-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'actual_velocity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_velocity-response>)))
  "Returns string type for a service object of type '<get_velocity-response>"
  "schunk_ezn64/get_velocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_velocity-response)))
  "Returns string type for a service object of type 'get_velocity-response"
  "schunk_ezn64/get_velocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_velocity-response>)))
  "Returns md5sum for a message object of type '<get_velocity-response>"
  "4372144f5734356a08e3014ad0d9d0cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_velocity-response)))
  "Returns md5sum for a message object of type 'get_velocity-response"
  "4372144f5734356a08e3014ad0d9d0cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_velocity-response>)))
  "Returns full string definition for message of type '<get_velocity-response>"
  (cl:format cl:nil "float32 actual_velocity~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_velocity-response)))
  "Returns full string definition for message of type 'get_velocity-response"
  (cl:format cl:nil "float32 actual_velocity~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_velocity-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_velocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_velocity-response
    (cl:cons ':actual_velocity (actual_velocity msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_velocity)))
  'get_velocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_velocity)))
  'get_velocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_velocity)))
  "Returns string type for a service object of type '<get_velocity>"
  "schunk_ezn64/get_velocity")