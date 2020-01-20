;; Auto-generated. Do not edit!


(when (boundp 'py_pkg::InputStates)
  (if (not (find-package "PY_PKG"))
    (make-package "PY_PKG"))
  (shadow 'InputStates (find-package "PY_PKG")))
(unless (find-package "PY_PKG::INPUTSTATES")
  (make-package "PY_PKG::INPUTSTATES"))

(in-package "ROS")
;;//! \htmlinclude InputStates.msg.html


(defclass py_pkg::InputStates
  :super ros::object
  :slots (_data ))

(defmethod py_pkg::InputStates
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-long (elt _data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get py_pkg::InputStates :md5sum-) "563b27884d008b0d2adff54dc1f9e4f5")
(setf (get py_pkg::InputStates :datatype-) "py_pkg/InputStates")
(setf (get py_pkg::InputStates :definition-)
      "int32[] data
")



(provide :py_pkg/InputStates "563b27884d008b0d2adff54dc1f9e4f5")


