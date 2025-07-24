
(cl:in-package :asdf)

(defsystem "cpp_training-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Cone" :depends-on ("_package_Cone"))
    (:file "_package_Cone" :depends-on ("_package"))
    (:file "ConeDetections" :depends-on ("_package_ConeDetections"))
    (:file "_package_ConeDetections" :depends-on ("_package"))
  ))