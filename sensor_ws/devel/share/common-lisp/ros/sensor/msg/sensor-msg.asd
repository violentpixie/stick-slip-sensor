
(cl:in-package :asdf)

(defsystem "sensor-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Accel" :depends-on ("_package_Accel"))
    (:file "_package_Accel" :depends-on ("_package"))
  ))