
(cl:in-package :asdf)

(defsystem "wittenstein_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "wittenstein" :depends-on ("_package_wittenstein"))
    (:file "_package_wittenstein" :depends-on ("_package"))
  ))