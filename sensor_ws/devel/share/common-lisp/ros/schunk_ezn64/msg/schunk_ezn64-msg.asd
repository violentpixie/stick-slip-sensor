
(cl:in-package :asdf)

(defsystem "schunk_ezn64-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PosAndSpeedFloat32" :depends-on ("_package_PosAndSpeedFloat32"))
    (:file "_package_PosAndSpeedFloat32" :depends-on ("_package"))
  ))