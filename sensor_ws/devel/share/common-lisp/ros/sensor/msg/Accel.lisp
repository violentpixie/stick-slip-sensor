; Auto-generated. Do not edit!


(cl:in-package sensor-msg)


;//! \htmlinclude Accel.msg.html

(cl:defclass <Accel> (roslisp-msg-protocol:ros-message)
  ((accel1_x
    :reader accel1_x
    :initarg :accel1_x
    :type cl:float
    :initform 0.0)
   (accel1_y
    :reader accel1_y
    :initarg :accel1_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass Accel (<Accel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Accel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Accel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor-msg:<Accel> is deprecated: use sensor-msg:Accel instead.")))

(cl:ensure-generic-function 'accel1_x-val :lambda-list '(m))
(cl:defmethod accel1_x-val ((m <Accel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor-msg:accel1_x-val is deprecated.  Use sensor-msg:accel1_x instead.")
  (accel1_x m))

(cl:ensure-generic-function 'accel1_y-val :lambda-list '(m))
(cl:defmethod accel1_y-val ((m <Accel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor-msg:accel1_y-val is deprecated.  Use sensor-msg:accel1_y instead.")
  (accel1_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Accel>) ostream)
  "Serializes a message object of type '<Accel>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'accel1_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'accel1_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Accel>) istream)
  "Deserializes a message object of type '<Accel>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accel1_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accel1_y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Accel>)))
  "Returns string type for a message object of type '<Accel>"
  "sensor/Accel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Accel)))
  "Returns string type for a message object of type 'Accel"
  "sensor/Accel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Accel>)))
  "Returns md5sum for a message object of type '<Accel>"
  "136544c7034858b5ba440b7169a0f268")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Accel)))
  "Returns md5sum for a message object of type 'Accel"
  "136544c7034858b5ba440b7169a0f268")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Accel>)))
  "Returns full string definition for message of type '<Accel>"
  (cl:format cl:nil "float64 accel1_x ~%float64 accel1_y ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Accel)))
  "Returns full string definition for message of type 'Accel"
  (cl:format cl:nil "float64 accel1_x ~%float64 accel1_y ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Accel>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Accel>))
  "Converts a ROS message object to a list"
  (cl:list 'Accel
    (cl:cons ':accel1_x (accel1_x msg))
    (cl:cons ':accel1_y (accel1_y msg))
))
