; Auto-generated. Do not edit!


(cl:in-package gas_robot_sim-srv)


;//! \htmlinclude Greeting-request.msg.html

(cl:defclass <Greeting-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Greeting-request (<Greeting-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Greeting-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Greeting-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gas_robot_sim-srv:<Greeting-request> is deprecated: use gas_robot_sim-srv:Greeting-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Greeting-request>) ostream)
  "Serializes a message object of type '<Greeting-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Greeting-request>) istream)
  "Deserializes a message object of type '<Greeting-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Greeting-request>)))
  "Returns string type for a service object of type '<Greeting-request>"
  "gas_robot_sim/GreetingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Greeting-request)))
  "Returns string type for a service object of type 'Greeting-request"
  "gas_robot_sim/GreetingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Greeting-request>)))
  "Returns md5sum for a message object of type '<Greeting-request>"
  "5f003d6bcc824cbd51361d66d8e4f76c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Greeting-request)))
  "Returns md5sum for a message object of type 'Greeting-request"
  "5f003d6bcc824cbd51361d66d8e4f76c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Greeting-request>)))
  "Returns full string definition for message of type '<Greeting-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Greeting-request)))
  "Returns full string definition for message of type 'Greeting-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Greeting-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Greeting-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Greeting-request
))
;//! \htmlinclude Greeting-response.msg.html

(cl:defclass <Greeting-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Greeting-response (<Greeting-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Greeting-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Greeting-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gas_robot_sim-srv:<Greeting-response> is deprecated: use gas_robot_sim-srv:Greeting-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Greeting-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gas_robot_sim-srv:message-val is deprecated.  Use gas_robot_sim-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Greeting-response>) ostream)
  "Serializes a message object of type '<Greeting-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Greeting-response>) istream)
  "Deserializes a message object of type '<Greeting-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Greeting-response>)))
  "Returns string type for a service object of type '<Greeting-response>"
  "gas_robot_sim/GreetingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Greeting-response)))
  "Returns string type for a service object of type 'Greeting-response"
  "gas_robot_sim/GreetingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Greeting-response>)))
  "Returns md5sum for a message object of type '<Greeting-response>"
  "5f003d6bcc824cbd51361d66d8e4f76c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Greeting-response)))
  "Returns md5sum for a message object of type 'Greeting-response"
  "5f003d6bcc824cbd51361d66d8e4f76c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Greeting-response>)))
  "Returns full string definition for message of type '<Greeting-response>"
  (cl:format cl:nil "string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Greeting-response)))
  "Returns full string definition for message of type 'Greeting-response"
  (cl:format cl:nil "string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Greeting-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Greeting-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Greeting-response
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Greeting)))
  'Greeting-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Greeting)))
  'Greeting-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Greeting)))
  "Returns string type for a service object of type '<Greeting>"
  "gas_robot_sim/Greeting")