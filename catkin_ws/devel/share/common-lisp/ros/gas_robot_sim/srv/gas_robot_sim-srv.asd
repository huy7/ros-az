
(cl:in-package :asdf)

(defsystem "gas_robot_sim-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Greeting" :depends-on ("_package_Greeting"))
    (:file "_package_Greeting" :depends-on ("_package"))
  ))