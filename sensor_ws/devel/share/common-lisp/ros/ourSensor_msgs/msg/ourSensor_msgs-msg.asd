
(cl:in-package :asdf)

(defsystem "ourSensor_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Accel" :depends-on ("_package_Accel"))
    (:file "_package_Accel" :depends-on ("_package"))
  ))