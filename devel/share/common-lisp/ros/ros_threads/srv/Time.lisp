; Auto-generated. Do not edit!


(cl:in-package ros_threads-srv)


;//! \htmlinclude Time-request.msg.html

(cl:defclass <Time-request> (roslisp-msg-protocol:ros-message)
  ((Delay_s
    :reader Delay_s
    :initarg :Delay_s
    :type cl:integer
    :initform 0))
)

(cl:defclass Time-request (<Time-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Time-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Time-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_threads-srv:<Time-request> is deprecated: use ros_threads-srv:Time-request instead.")))

(cl:ensure-generic-function 'Delay_s-val :lambda-list '(m))
(cl:defmethod Delay_s-val ((m <Time-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_threads-srv:Delay_s-val is deprecated.  Use ros_threads-srv:Delay_s instead.")
  (Delay_s m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Time-request>) ostream)
  "Serializes a message object of type '<Time-request>"
  (cl:let* ((signed (cl:slot-value msg 'Delay_s)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Time-request>) istream)
  "Deserializes a message object of type '<Time-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Delay_s) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Time-request>)))
  "Returns string type for a service object of type '<Time-request>"
  "ros_threads/TimeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Time-request)))
  "Returns string type for a service object of type 'Time-request"
  "ros_threads/TimeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Time-request>)))
  "Returns md5sum for a message object of type '<Time-request>"
  "5e7d20764f420c413cfb42961cc93480")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Time-request)))
  "Returns md5sum for a message object of type 'Time-request"
  "5e7d20764f420c413cfb42961cc93480")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Time-request>)))
  "Returns full string definition for message of type '<Time-request>"
  (cl:format cl:nil "int64 Delay_s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Time-request)))
  "Returns full string definition for message of type 'Time-request"
  (cl:format cl:nil "int64 Delay_s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Time-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Time-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Time-request
    (cl:cons ':Delay_s (Delay_s msg))
))
;//! \htmlinclude Time-response.msg.html

(cl:defclass <Time-response> (roslisp-msg-protocol:ros-message)
  ((Time
    :reader Time
    :initarg :Time
    :type cl:string
    :initform ""))
)

(cl:defclass Time-response (<Time-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Time-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Time-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_threads-srv:<Time-response> is deprecated: use ros_threads-srv:Time-response instead.")))

(cl:ensure-generic-function 'Time-val :lambda-list '(m))
(cl:defmethod Time-val ((m <Time-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_threads-srv:Time-val is deprecated.  Use ros_threads-srv:Time instead.")
  (Time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Time-response>) ostream)
  "Serializes a message object of type '<Time-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Time-response>) istream)
  "Deserializes a message object of type '<Time-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Time-response>)))
  "Returns string type for a service object of type '<Time-response>"
  "ros_threads/TimeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Time-response)))
  "Returns string type for a service object of type 'Time-response"
  "ros_threads/TimeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Time-response>)))
  "Returns md5sum for a message object of type '<Time-response>"
  "5e7d20764f420c413cfb42961cc93480")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Time-response)))
  "Returns md5sum for a message object of type 'Time-response"
  "5e7d20764f420c413cfb42961cc93480")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Time-response>)))
  "Returns full string definition for message of type '<Time-response>"
  (cl:format cl:nil "string Time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Time-response)))
  "Returns full string definition for message of type 'Time-response"
  (cl:format cl:nil "string Time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Time-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Time-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Time-response
    (cl:cons ':Time (Time msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Time)))
  'Time-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Time)))
  'Time-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Time)))
  "Returns string type for a service object of type '<Time>"
  "ros_threads/Time")