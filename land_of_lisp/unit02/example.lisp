(defparameter *small* 1)
(defparameter *big* 100)

(defun gusse-my-number ()
  (ash (+ *small* *big*) -1))

(defun smaller ()
  (setf *big* (1- (gusse-my-number)))
  (gusse-my-number))

(defun bigger ()
  (setf *small* (1+ (gusse-my-number)))
  (gusse-my-number))

(defun start-over ()
  (defparameter *small* 1)
  (defparameter *big* 100)
  (gusse-my-number))

(gusse-my-number)
