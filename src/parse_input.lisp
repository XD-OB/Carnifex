(defun parse-input (av)
  (if (OR (loop for arg in av
             do (if (OR (string-equal "-h" arg)
                       (string-equal "--help" arg)) t))
          (NOT (< 2 (length av)))) 
          (progn
            (format t "usage: sbcl --load main.lisp <width> <height> [-h --help -r --random -t --toggle -f --fingerprint]

positional arguments:

  width                 width of the grid
  
  height                height of the grid

optional arguments:
  -h, --help            show this help message and exit~%")
            (sb-ext:exit))  
      )
  (setq column (parse-integer (nth 1 av)))
  (setq row (parse-integer (nth 2 av)))
  (loop for arg in av
      do (if (OR (string-equal "-r" arg)
               (string-equal "--random" arg))
            (setq *random* 1)))
  (loop for arg in av
      do (if (OR (string-equal "-t" arg)
               (string-equal "--toggle" arg))
            (setq *toggle* 1)))
  (loop for arg in av
      do (if (OR (string-equal "-f" arg)
                (string-equal "--fingerprint" arg))
            (setq *fingerprint* 1)))
)
