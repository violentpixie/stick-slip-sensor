; Auto-generated. Do not edit!


(cl:in-package wittenstein_msgs-msg)


;//! \htmlinclude wittenstein.msg.html

(cl:defclass <wittenstein> (roslisp-msg-protocol:ros-message)
  ((fx
    :reader fx
    :initarg :fx
    :type cl:float
    :initform 0.0)
   (fy
    :reader fy
    :initarg :fy
    :type cl:float
    :initform 0.0)
   (fz
    :reader fz
    :initarg :fz
    :type cl:float
    :initform 0.0))
)

(cl:defclass wittenstein (<wittenstein>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wittenstein>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wittenstein)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wittenstein_msgs-msg:<wittenstein> is deprecated: use wittenstein_msgs-msg:wittenstein instead.")))

(cl:ensure-generic-function 'fx-val :lambda-list '(m))
(cl:defmethod fx-val ((m <wittenstein>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wittenstein_msgs-msg:fx-val is deprecated.  Use wittenstein_msgs-msg:fx instead.")
  (fx m))

(cl:ensure-generic-function 'fy-val :lambda-list '(m))
(cl:defmethod fy-val ((m <wittenstein>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wittenstein_msgs-msg:fy-val is deprecated.  Use wittenstein_msgs-msg:fy instead.")
  (fy m))

(cl:ensure-generic-function 'fz-val :lambda-list '(m))
(cl:defmethod fz-val ((m <wittenstein>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wittenstein_msgs-msg:fz-val is deprecated.  Use wittenstein_msgs-msg:fz instead.")
  (fz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wittenstein>) ostream)
  "Serializes a message object of type '<wittenstein>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wittenstein>) istream)
  "Deserializes a message object of type '<wittenstein>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fz) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wittenstein>)))
  "Returns string type for a message object of type '<wittenstein>"
  "wittenstein_msgs/wittenstein")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wittenstein)))
  "Returns string type for a message object of type 'wittenstein"
  "wittenstein_msgs/wittenstein")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wittenstein>)))
  "Returns md5sum for a message object of type '<wittenstein>"
  "a7b2ae941c5b15bd5e80a4da6c8efa41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wittenstein)))
  "Returns md5sum for a message object of type 'wittenstein"
  "a7b2ae941c5b15bd5e80a4da6c8efa41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wittenstein>)))
  "Returns full string definition for message of type '<wittenstein>"
  (cl:format cl:nil "float64 fx~%float64 fy~%float64 fz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wittenstein)))
  "Returns full string definition for message of type 'wittenstein"
  (cl:format cl:nil "float64 fx~%float64 fy~%float64 fz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wittenstein>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wittenstein>))
  "Converts a ROS message object to a list"
  (cl:list 'wittenstein
    (cl:cons ':fx (fx msg))
    (cl:cons ':fy (fy msg))
    (cl:cons ':fz (fz msg))
))
