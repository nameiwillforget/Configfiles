(defun check-math-mode (BEG END)
   (save-excursion (save-match-data (goto-char BEG) (texmathp))))

(defun check-not-math-mode (BEG END)
  (isearchp-not-pred 'check-math-mode BEG END))


(add-to-list 'isearchp-filter-predicates-alist
	     '("[math]" check-math-mode "[MATH]")
	     '("~[math]" check-not-math-mode "[MATH]")
	     )
