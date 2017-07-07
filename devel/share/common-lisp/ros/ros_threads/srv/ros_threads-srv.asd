
(cl:in-package :asdf)

(defsystem "ros_threads-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "time_threads" :depends-on ("_package_time_threads"))
    (:file "_package_time_threads" :depends-on ("_package"))
  ))