
(cl:in-package :asdf)

(defsystem "py_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "InputStates" :depends-on ("_package_InputStates"))
    (:file "_package_InputStates" :depends-on ("_package"))
  ))