; Auto-generated. Do not edit!


(cl:in-package schunk_ezn64-srv)


;//! \htmlinclude set_velocity-request.msg.html

(cl:defclass <set_velocity-request> (roslisp-msg-protocol:ros-message)
  ((goal_velocity
    :reader goal_velocity
    :initarg :goal_velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass set_velocity-request (<set_velocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_velocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_velocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name schunk_ezn64-srv:<set_velocity-request> is deprecated: use schunk_ezn64-srv:set_velocity-request instead.")))

(cl:ensure-generic-function 'goal_velocity-val :lambda-list '(m))
(cl:defmethod goal_velocity-val ((m <set_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_ezn64-srv:goal_velocity-val is deprecated.  Use schunk_ezn64-srv:goal_velocity instead.")
  (goal_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_velocity-request>) ostream)
  "Serializes a message object of type '<set_velocity-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goal_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_velocity-request>) istream)
  "Deserializes a message object of type '<set_velocity-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_velocity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_velocity-request>)))
  "Returns string type for a service object of type '<set_velocity-request>"
  "schunk_ezn64/set_velocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_velocity-request)))
  "Returns string type for a service object of type 'set_velocity-request"
  "schunk_ezn64/set_velocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_velocity-request>)))
  "Returns md5sum for a message object of type '<set_velocity-request>"
  "8bcbe89faecc3b1502a1b95a8574cab4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_velocity-request)))
  "Returns md5sum for a message object of type 'set_velocity-request"
  "8bcbe89faecc3b1502a1b95a8574cab4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_velocity-request>)))
  "Returns full string definition for message of type '<set_velocity-request>"
  (cl:format cl:nil "float32 goal_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_velocity-request)))
  "Returns full string definition for message of type 'set_velocity-request"
  (cl:format cl:nil "float32 goal_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_velocity-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_velocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_velocity-request
    (cl:cons ':goal_velocity (goal_velocity msg))
))
;//! \htmlinclude set_velocity-response.msg.html

(cl:defclass <set_velocity-response> (roslisp-msg-protocol:ros-message)
  ((goal_accepted
    :reader goal_accepted
    :initarg :goal_accepted
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_velocity-response (<set_velocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_velocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_velocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name schunk_ezn64-srv:<set_velocity-response> is deprecated: use schunk_ezn64-srv:set_velocity-response instead.")))

(cl:ensure-generic-function 'goal_accepted-val :lambda-list '(m))
(cl:defmethod goal_accepted-val ((m <set_velocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_ezn64-srv:goal_accepted-val is deprecated.  Use schunk_ezn64-srv:goal_accepted instead.")
  (goal_accepted m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_velocity-response>) ostream)
  "Serializes a message object of type '<set_velocity-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'goal_accepted) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_velocity-response>) istream)
  "Deserializes a message object of type '<set_velocity-response>"
    (cl:setf (cl:slot-value msg 'goal_accepted) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_velocity-response>)))
  "Returns string type for a service object of type '<set_velocity-response>"
  "schunk_ezn64/set_velocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_velocity-response)))
  "Returns string type for a service object of type 'set_velocity-response"
  "schunk_ezn64/set_velocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_velocity-response>)))
  "Returns md5sum for a message object of type '<set_velocity-response>"
  "8bcbe89faecc3b1502a1b95a8574cab4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_velocity-response)))
  "Returns md5sum for a message object of type 'set_velocity-response"
  "8bcbe89faecc3b1502a1b95a8574cab4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_velocity-response>)))
  "Returns full string definition for message of type '<set_velocity-response>"
  (cl:format cl:nil "bool goal_accepted~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_velocity-response)))
  "Returns full string definition for message of type 'set_velocity-response"
  (cl:format cl:nil "bool goal_accepted~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_velocity-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_velocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_velocity-response
    (cl:cons ':goal_accepted (goal_accepted msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_velocity)))
  'set_velocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_velocity)))
  'set_velocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_velocity)))
  "Returns string type for a service object of type '<set_velocity>"
  "schunk_ezn64/set_velocity")