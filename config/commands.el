;; source: http://steve.yegge.googlepages.com/my-dot-emacs-file
(defun rename-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive "sNew name: ")
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not filename)
        (message "Buffer '%s' is not visiting a file!" name)
      (if (get-buffer new-name)
          (message "A buffer named '%s' already exists!" new-name)
        (progn
          (rename-file filename new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil))))))


(defun disable-all-minor-modes ()
  (interactive)
  (mapc
   (lambda (mode-symbol)
     (when (functionp mode-symbol)
       ;; some symbols are functions which aren't normal mode functions
       (ignore-errors 
         (funcall mode-symbol -1))))
   minor-mode-list))

(defun flyspell-on-for-buffer-type ()
      "Enable Flyspell appropriately for the major mode of the current buffer.  Uses `flyspell-prog-mode' for modes derived from `prog-mode', so only strings and comments get checked.  All other buffers get `flyspell-mode' to check all text.  If flyspell is already enabled, does nothing."
      (interactive)
      (if (not (symbol-value flyspell-mode)) ; if not already on
        (progn
          (if (derived-mode-p 'prog-mode)
            (progn
              (message "Flyspell on (code)")
              (flyspell-prog-mode))
            ;; else
            (progn
              (message "Flyspell on (text)")
              (flyspell-mode 1)))
          ;; I tried putting (flyspell-buffer) here but it didn't seem to work
          )))


(defun flyspell-toggle ()
"Turn Flyspell on if it is off, or off if it is on.  When turning on, it uses `flyspell-on-for-buffer-type' so code-vs-text is handled appropriately."
      (interactive)
      (if (symbol-value flyspell-mode)
          (progn ; flyspell is on, turn it off
            (message "Flyspell off")
            (flyspell-mode -1))
          ; else - flyspell is off, turn it on
        (flyspell-on-for-buffer-type)))



(let ((langs '("american" "deutsch8")))
      (setq lang-ring (make-ring (length langs)))
      (dolist (elem langs) (ring-insert lang-ring elem)))

(defun cycle-ispell-languages ()
      (interactive)
      (let ((lang (ring-ref lang-ring -1)))
        (ring-insert lang-ring lang)
        (ispell-change-dictionary lang)))

(defun ispell-deutsch ()
      (interactive)
        (ispell-change-dictionary '"deutsch8"))

(defun ispell-american ()
      (interactive)
        (ispell-change-dictionary '"american"))

(defun flyspell-correct-recursive ()
        (interactive)
	(let ((current-prefix-arg '(4))) (call-interactively #'flyspell-correct-wrapper)))

(defun flyspell-correct-buffer ()
        (interactive)
	(flyspell-buffer)
	(end-of-buffer)
	(flyspell-correct-recursive))


(defun change-mathvar (a b)
  (interactive "sfrom: \nsto: ")
  (beginning-of-buffer)
  (while (re-search-forward
      "\\(\\\\(\\|\\\\\\[\\|[^\\\\]\$\$?\\|\\\\begin{equation}\\|\\\\begin{align}\\)" nil 1)
    (query-replace-regexp a  b t  (point) 
              (progn (re-search-forward 
                  "\\(\\\\)\\|\\\\\\]\\|[^\\\\]\$\$?\\|\\\\end{equation}\\|\\\\end{align}\\)" nil 1) (point)))))

(defun change-mathvar-withinstring (a b)
  (interactive "sfrom: \nsto: ")
  (beginning-of-buffer)
  (while (re-search-forward
      "\\(\\\\(\\|\\\\\\[\\|[^\\\\]\$\$?\\|\\\\begin{equation}\\|\\\\begin{align}\\)" nil 1)
    (query-replace-regexp a  b nil  (point) 
              (progn (re-search-forward 
                  "\\(\\\\)\\|\\\\\\]\\|[^\\\\]\$\$?\\|\\\\end{equation}\\|\\\\end{align}\\)" nil 1) (point)))))





(defun check-math-mode (BEG END)
   (save-excursion (save-match-data (goto-char BEG) (texmathp))))

(defun no-math (BEG END)
  (check-math-mode BEG END == nil)
  )

(defun isearchp-within-mathmode (a)
  (isearchp-add-filter-predicate check-math-mode)
  (isearch-forward)
  )


(defun remove-environment (ENV)
  (interactive "sEnvironment: ")
   (replace-regexp (format "\\\\%s{\\(.*?\\)}" ENV) "\\1")
   )
