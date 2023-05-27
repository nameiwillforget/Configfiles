(add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-reftex)   ; with Emacs latex mode

     (load "auctex.el" nil t t)
(setq-default TeX-master nil)

(setq TeX-parse-self t)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook #'turn-on-cdlatex)   ; with AUCTeX LaTeX mode

(setq-default TeX-engine 'luatex)

(defun hack-local-variables-make-interactive (&rest _args)
  "Just add the `interactive'-specification to `hack-local-variables'."
  (interactive))

(advice-add 'hack-local-variables :before #'hack-local-variables-make-interactive)


(add-hook 'LaTeX-mode-hook
          '(lambda ()
            (define-key LaTeX-mode-map (kbd "$") 'self-insert-command)))



(add-hook 'LaTeX-mode-hook #'LaTeX-math-mode)

(setq LaTeX-math-menu-unicode 1)
(setq TeX-electric-sub-and-superscript 1)

(add-hook
 'LaTeX-mode-hook
 (lambda ()
   (let ((math (reverse (append LaTeX-math-list LaTeX-math-default))))
     (while math
       (let ((entry (car math))
         value)
     (setq math (cdr math))
     (if (listp (cdr entry))
         (setq value (nth 1 entry))
       (setq value (cdr entry)))
     (if (stringp value)
         (fset (intern (concat "LaTeX-math-" value))
           (list 'lambda (list 'arg) (list 'interactive "*P")
             (list 'LaTeX-math-insert value
                   '(null (texmathp)))))))))))





      (defun TeX-command-toggle-shell-escape ()
    "toggles the option --shell-escape from the tex command"
            (interactive)
            (setq TeX-command-extra-options
                  (cond ((string-match-p "\\_<--shell-escape\\_>" TeX-command-extra-options )
                         (replace-regexp-in-string "\\_<--shell-escape\\_>" "" TeX-command-extra-options))
                        ((string-empty-p TeX-command-extra-options)"--shell-escape")
                        (t(format "--shell-escape %s" TeX-command-extra-options))))
            (message "TeX-command-extra-options : `%s'" TeX-command-extra-options))

(TeX-command-toggle-shell-escape)



;; Use pdf-tools to open PDF files
(setq TeX-view-program-selection '((output-pdf "PDF Tools"))
      TeX-source-correlate-start-server t)

;; Update PDF buffers after successful LaTeX runs
(add-hook 'TeX-after-compilation-finished-functions
           #'TeX-revert-document-buffer)

(add-hook 'LaTeX-mode-hook #'abbrev-mode)

;; (abbrev-table-put latex-mode-abbrev-table :enable-function (lambda () (not (texmathp))))
(abbrev-table-put global-abbrev-table :enable-function (lambda () (not (texmathp))))



