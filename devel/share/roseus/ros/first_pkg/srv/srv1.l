;; Auto-generated. Do not edit!


(when (boundp 'first_pkg::srv1)
  (if (not (find-package "FIRST_PKG"))
    (make-package "FIRST_PKG"))
  (shadow 'srv1 (find-package "FIRST_PKG")))
(unless (find-package "FIRST_PKG::SRV1")
  (make-package "FIRST_PKG::SRV1"))
(unless (find-package "FIRST_PKG::SRV1REQUEST")
  (make-package "FIRST_PKG::SRV1REQUEST"))
(unless (find-package "FIRST_PKG::SRV1RESPONSE")
  (make-package "FIRST_PKG::SRV1RESPONSE"))

(in-package "ROS")





(defclass first_pkg::srv1Request
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod first_pkg::srv1Request
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass first_pkg::srv1Response
  :super ros::object
  :slots (_result ))

(defmethod first_pkg::srv1Response
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass first_pkg::srv1
  :super ros::object
  :slots ())

(setf (get first_pkg::srv1 :md5sum-) "4bac5263dd214a8605f1874d4917e35b")
(setf (get first_pkg::srv1 :datatype-) "first_pkg/srv1")
(setf (get first_pkg::srv1 :request) first_pkg::srv1Request)
(setf (get first_pkg::srv1 :response) first_pkg::srv1Response)

(defmethod first_pkg::srv1Request
  (:response () (instance first_pkg::srv1Response :init)))

(setf (get first_pkg::srv1Request :md5sum-) "4bac5263dd214a8605f1874d4917e35b")
(setf (get first_pkg::srv1Request :datatype-) "first_pkg/srv1Request")
(setf (get first_pkg::srv1Request :definition-)
      "int32 num1
int32 num2
---
int32 result

")

(setf (get first_pkg::srv1Response :md5sum-) "4bac5263dd214a8605f1874d4917e35b")
(setf (get first_pkg::srv1Response :datatype-) "first_pkg/srv1Response")
(setf (get first_pkg::srv1Response :definition-)
      "int32 num1
int32 num2
---
int32 result

")



(provide :first_pkg/srv1 "4bac5263dd214a8605f1874d4917e35b")


