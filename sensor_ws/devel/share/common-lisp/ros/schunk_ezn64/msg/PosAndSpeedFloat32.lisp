; Auto-generated. Do not edit!


(cl:in-package schunk_ezn64-msg)


;//! \htmlinclude PosAndSpeedFloat32.msg.html

(cl:defclass <PosAndSpeedFloat32> (roslisp-msg-protocol:ros-message)
  ((pos
    :reader pos
    :initarg :pos
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass PosAndSpeedFloat32 (<PosAndSpeedFloat32>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PosAndSpeedFloat32>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PosAndSpeedFloat32)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name schunk_ezn64-msg:<PosAndSpeedFloat32> is deprecated: use schunk_ezn64-msg:PosAndSpeedFloat32 instead.")))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <PosAndSpeedFloat32>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_ezn64-msg:pos-val is deprecated.  Use schunk_ezn64-msg:pos instead.")
  (pos m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <PosAndSpeedFloat32>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_ezn64-msg:speed-val is deprecated.  Use schunk_ezn64-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PosAndSpeedFloat32>) ostream)
  "Serializes a message object of type '<PosAndSpeedFloat32>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PosAndSpeedFloat32>) istream)
  "Deserializes a message object of type '<PosAndSpeedFloat32>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PosAndSpeedFloat32>)))
  "Returns string type for a message object of type '<PosAndSpeedFloat32>"
  "schunk_ezn64/PosAndSpeedFloat32")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PosAndSpeedFloat32)))
  "Returns string type for a message object of type 'PosAndSpeedFloat32"
  "schunk_ezn64/PosAndSpeedFloat32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PosAndSpeedFloat32>)))
  "Returns md5sum for a message object of type '<PosAndSpeedFloat32>"
  "0611d9adb487c3bcf130e5b7b3ee7f37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PosAndSpeedFloat32)))
  "Returns md5sum for a message object of type 'PosAndSpeedFloat32"
  "0611d9adb487c3bcf130e5b7b3ee7f37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PosAndSpeedFloat32>)))
  "Returns full string definition for message of type '<PosAndSpeedFloat32>"
  (cl:format cl:nil "float32 pos~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PosAndSpeedFloat32)))
  "Returns full string definition for message of type 'PosAndSpeedFloat32"
  (cl:format cl:nil "float32 pos~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PosAndSpeedFloat32>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PosAndSpeedFloat32>))
  "Converts a ROS message object to a list"
  (cl:list 'PosAndSpeedFloat32
    (cl:cons ':pos (pos msg))
    (cl:cons ':speed (speed msg))
))
