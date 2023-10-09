; Auto-generated. Do not edit!


(cl:in-package schunk_ezn64-srv)


;//! \htmlinclude fastStop-request.msg.html

(cl:defclass <fastStop-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass fastStop-request (<fastStop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fastStop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fastStop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name schunk_ezn64-srv:<fastStop-request> is deprecated: use schunk_ezn64-srv:fastStop-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fastStop-request>) ostream)
  "Serializes a message object of type '<fastStop-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fastStop-request>) istream)
  "Deserializes a message object of type '<fastStop-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fastStop-request>)))
  "Returns string type for a service object of type '<fastStop-request>"
  "schunk_ezn64/fastStopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fastStop-request)))
  "Returns string type for a service object of type 'fastStop-request"
  "schunk_ezn64/fastStopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fastStop-request>)))
  "Returns md5sum for a message object of type '<fastStop-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fastStop-request)))
  "Returns md5sum for a message object of type 'fastStop-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fastStop-request>)))
  "Returns full string definition for message of type '<fastStop-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fastStop-request)))
  "Returns full string definition for message of type 'fastStop-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fastStop-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fastStop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'fastStop-request
))
;//! \htmlinclude fastStop-response.msg.html

(cl:defclass <fastStop-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass fastStop-response (<fastStop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fastStop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fastStop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name schunk_ezn64-srv:<fastStop-response> is deprecated: use schunk_ezn64-srv:fastStop-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fastStop-response>) ostream)
  "Serializes a message object of type '<fastStop-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fastStop-response>) istream)
  "Deserializes a message object of type '<fastStop-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fastStop-response>)))
  "Returns string type for a service object of type '<fastStop-response>"
  "schunk_ezn64/fastStopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fastStop-response)))
  "Returns string type for a service object of type 'fastStop-response"
  "schunk_ezn64/fastStopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fastStop-response>)))
  "Returns md5sum for a message object of type '<fastStop-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fastStop-response)))
  "Returns md5sum for a message object of type 'fastStop-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fastStop-response>)))
  "Returns full string definition for message of type '<fastStop-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fastStop-response)))
  "Returns full string definition for message of type 'fastStop-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fastStop-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fastStop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'fastStop-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'fastStop)))
  'fastStop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'fastStop)))
  'fastStop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fastStop)))
  "Returns string type for a service object of type '<fastStop>"
  "schunk_ezn64/fastStop")