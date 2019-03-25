(defun random-matrix ()
  (dotimes (i row)
    (dotimes (j column)
      (setf (aref matrix i j) (random 2))))
  matrix)

(defun is-alive (i j)
  (equal (aref matrix i j) 1))

(defun is-neighbor (i j)
  (if (AND (>= i 0) (< i row) (>= j 0) (< j column))
      (if (equal (aref matrix i j) 1) 1 0) 0))

(defun get-neighbors (x y)
  (setf nb 0)
  (loop for i from (- x 1) to (+ x 1)
        do (loop for j from (- y 1) to (+ y 1)
                 do (setf nb (+ nb (is-neighbor i j)))))
  (if (equal (aref matrix x y) 1)
      (decf nb))
  nb)

(defun calculate-density ()
  (dotimes (i row)
    (dotimes (j column)
      (setf (aref density i j) (get-neighbors i j))))
  density)

(defun rule1 (i j)
  (if (AND (is-alive i j) (< (aref density i j) 2)) t nil))

(defun rule2 (i j)
  (if (AND (is-alive i j) (OR (equal (aref density i j) 2) (equal (aref density i j) 3))) t nil))

(defun rule3 (i j)
  (if (AND (is-alive i j) (> (aref density i j) 3)) t nil))

(defun rule4 (i j)
  (if (AND (NOT(is-alive i j)) (equal (aref density i j) 3)) t nil))

(defun update-matrix ()
  (dotimes (i row)
    (dotimes (j column)
      (if (rule1 i j) (setf (aref matrix i j) (if (equal *fingerprint* 1) 2 0)))
      (if (rule2 i j) (setf (aref matrix i j) 1))
      (if (rule3 i j) (setf (aref matrix i j) (if (equal *fingerprint* 1) 2 0)))
      (if (rule4 i j) (setf (aref matrix i j) 1))))
  matrix)


(defun gol-algo ()
 (progn
   (setq density (calculate-density))
   (setq matrix (update-matrix))))
