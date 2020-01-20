; Auto-generated. Do not edit!


(cl:in-package first_pkg-srv)


;//! \htmlinclude srv1-request.msg.html

(cl:defclass <srv1-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:integer
    :initform 0))
)

(cl:defclass srv1-request (<srv1-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srv1-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srv1-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name first_pkg-srv:<srv1-request> is deprecated: use first_pkg-srv:srv1-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <srv1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first_pkg-srv:num1-val is deprecated.  Use first_pkg-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <srv1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first_pkg-srv:num2-val is deprecated.  Use first_pkg-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srv1-request>) ostream)
  "Serializes a message object of type '<srv1-request>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srv1-request>) istream)
  "Deserializes a message object of type '<srv1-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srv1-request>)))
  "Returns string type for a service object of type '<srv1-request>"
  "first_pkg/srv1Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srv1-request)))
  "Returns string type for a service object of type 'srv1-request"
  "first_pkg/srv1Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srv1-request>)))
  "Returns md5sum for a message object of type '<srv1-request>"
  "4bac5263dd214a8605f1874d4917e35b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srv1-request)))
  "Returns md5sum for a message object of type 'srv1-request"
  "4bac5263dd214a8605f1874d4917e35b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srv1-request>)))
  "Returns full string definition for message of type '<srv1-request>"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srv1-request)))
  "Returns full string definition for message of type 'srv1-request"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srv1-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srv1-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srv1-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude srv1-response.msg.html

(cl:defclass <srv1-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass srv1-response (<srv1-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srv1-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srv1-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name first_pkg-srv:<srv1-response> is deprecated: use first_pkg-srv:srv1-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <srv1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first_pkg-srv:result-val is deprecated.  Use first_pkg-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srv1-response>) ostream)
  "Serializes a message object of type '<srv1-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srv1-response>) istream)
  "Deserializes a message object of type '<srv1-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srv1-response>)))
  "Returns string type for a service object of type '<srv1-response>"
  "first_pkg/srv1Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srv1-response)))
  "Returns string type for a service object of type 'srv1-response"
  "first_pkg/srv1Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srv1-response>)))
  "Returns md5sum for a message object of type '<srv1-response>"
  "4bac5263dd214a8605f1874d4917e35b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srv1-response)))
  "Returns md5sum for a message object of type 'srv1-response"
  "4bac5263dd214a8605f1874d4917e35b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srv1-response>)))
  "Returns full string definition for message of type '<srv1-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srv1-response)))
  "Returns full string definition for message of type 'srv1-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srv1-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srv1-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srv1-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srv1)))
  'srv1-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srv1)))
  'srv1-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srv1)))
  "Returns string type for a service object of type '<srv1>"
  "first_pkg/srv1")