;; Auto-generated. Do not edit!


(when (boundp 'ros_threads::Time)
  (if (not (find-package "ROS_THREADS"))
    (make-package "ROS_THREADS"))
  (shadow 'Time (find-package "ROS_THREADS")))
(unless (find-package "ROS_THREADS::TIME")
  (make-package "ROS_THREADS::TIME"))
(unless (find-package "ROS_THREADS::TIMEREQUEST")
  (make-package "ROS_THREADS::TIMEREQUEST"))
(unless (find-package "ROS_THREADS::TIMERESPONSE")
  (make-package "ROS_THREADS::TIMERESPONSE"))

(in-package "ROS")





(defclass ros_threads::TimeRequest
  :super ros::object
  :slots (_Delay_s ))

(defmethod ros_threads::TimeRequest
  (:init
   (&key
    ((:Delay_s __Delay_s) 0)
    )
   (send-super :init)
   (setq _Delay_s (round __Delay_s))
   self)
  (:Delay_s
   (&optional __Delay_s)
   (if __Delay_s (setq _Delay_s __Delay_s)) _Delay_s)
  (:serialization-length
   ()
   (+
    ;; int64 _Delay_s
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _Delay_s
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _Delay_s (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _Delay_s) (= (length (_Delay_s . bv)) 2)) ;; bignum
              (write-long (ash (elt (_Delay_s . bv) 0) 0) s)
              (write-long (ash (elt (_Delay_s . bv) 1) -1) s))
             ((and (class _Delay_s) (= (length (_Delay_s . bv)) 1)) ;; big1
              (write-long (elt (_Delay_s . bv) 0) s)
              (write-long (if (>= _Delay_s 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _Delay_s s)(write-long (if (>= _Delay_s 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _Delay_s
#+(or :alpha :irix6 :x86_64)
      (setf _Delay_s (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _Delay_s (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass ros_threads::TimeResponse
  :super ros::object
  :slots (_Time ))

(defmethod ros_threads::TimeResponse
  (:init
   (&key
    ((:Time __Time) "")
    )
   (send-super :init)
   (setq _Time (string __Time))
   self)
  (:Time
   (&optional __Time)
   (if __Time (setq _Time __Time)) _Time)
  (:serialization-length
   ()
   (+
    ;; string _Time
    4 (length _Time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Time
       (write-long (length _Time) s) (princ _Time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ros_threads::Time
  :super ros::object
  :slots ())

(setf (get ros_threads::Time :md5sum-) "5e7d20764f420c413cfb42961cc93480")
(setf (get ros_threads::Time :datatype-) "ros_threads/Time")
(setf (get ros_threads::Time :request) ros_threads::TimeRequest)
(setf (get ros_threads::Time :response) ros_threads::TimeResponse)

(defmethod ros_threads::TimeRequest
  (:response () (instance ros_threads::TimeResponse :init)))

(setf (get ros_threads::TimeRequest :md5sum-) "5e7d20764f420c413cfb42961cc93480")
(setf (get ros_threads::TimeRequest :datatype-) "ros_threads/TimeRequest")
(setf (get ros_threads::TimeRequest :definition-)
      "int64 Delay_s
---
string Time

")

(setf (get ros_threads::TimeResponse :md5sum-) "5e7d20764f420c413cfb42961cc93480")
(setf (get ros_threads::TimeResponse :datatype-) "ros_threads/TimeResponse")
(setf (get ros_threads::TimeResponse :definition-)
      "int64 Delay_s
---
string Time

")



(provide :ros_threads/Time "5e7d20764f420c413cfb42961cc93480")


