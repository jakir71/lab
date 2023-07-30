(setq l1 '(10 20 30 40))
(format t "Current List: ~a~%" l1)

(setq l2 (cons 0 l1))
(format t "New List: ~a~%" l2)

(setq first (car l2))
(format t "First Element: ~a~%" first)

(setq rem (cdr l2))
(format t "Remaing Element: ~a~%" rem)

(setq l3 (list l1 l2))
(format t "Listed List: ~a [list]~%" l3)

