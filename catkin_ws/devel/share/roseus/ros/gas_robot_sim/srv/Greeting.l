;; Auto-generated. Do not edit!


(when (boundp 'gas_robot_sim::Greeting)
  (if (not (find-package "GAS_ROBOT_SIM"))
    (make-package "GAS_ROBOT_SIM"))
  (shadow 'Greeting (find-package "GAS_ROBOT_SIM")))
(unless (find-package "GAS_ROBOT_SIM::GREETING")
  (make-package "GAS_ROBOT_SIM::GREETING"))
(unless (find-package "GAS_ROBOT_SIM::GREETINGREQUEST")
  (make-package "GAS_ROBOT_SIM::GREETINGREQUEST"))
(unless (find-package "GAS_ROBOT_SIM::GREETINGRESPONSE")
  (make-package "GAS_ROBOT_SIM::GREETINGRESPONSE"))

(in-package "ROS")





(defclass gas_robot_sim::GreetingRequest
  :super ros::object
  :slots ())

(defmethod gas_robot_sim::GreetingRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass gas_robot_sim::GreetingResponse
  :super ros::object
  :slots (_message ))

(defmethod gas_robot_sim::GreetingResponse
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gas_robot_sim::Greeting
  :super ros::object
  :slots ())

(setf (get gas_robot_sim::Greeting :md5sum-) "5f003d6bcc824cbd51361d66d8e4f76c")
(setf (get gas_robot_sim::Greeting :datatype-) "gas_robot_sim/Greeting")
(setf (get gas_robot_sim::Greeting :request) gas_robot_sim::GreetingRequest)
(setf (get gas_robot_sim::Greeting :response) gas_robot_sim::GreetingResponse)

(defmethod gas_robot_sim::GreetingRequest
  (:response () (instance gas_robot_sim::GreetingResponse :init)))

(setf (get gas_robot_sim::GreetingRequest :md5sum-) "5f003d6bcc824cbd51361d66d8e4f76c")
(setf (get gas_robot_sim::GreetingRequest :datatype-) "gas_robot_sim/GreetingRequest")
(setf (get gas_robot_sim::GreetingRequest :definition-)
      "---
string message

")

(setf (get gas_robot_sim::GreetingResponse :md5sum-) "5f003d6bcc824cbd51361d66d8e4f76c")
(setf (get gas_robot_sim::GreetingResponse :datatype-) "gas_robot_sim/GreetingResponse")
(setf (get gas_robot_sim::GreetingResponse :definition-)
      "---
string message

")



(provide :gas_robot_sim/Greeting "5f003d6bcc824cbd51361d66d8e4f76c")


