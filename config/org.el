(defun my-org-latex-yas ()
  "Activate org and LaTeX yas expansion in org-mode buffers."
  (yas-minor-mode)
  (yas-activate-extra-mode 'latex-mode))


(add-hook 'org-mode-hook #'my-org-latex-yas)

(setq org-latex-default-packages-alist nil)
(setq org-latex-packages-alist nil)
(add-to-list 'org-latex-packages-alist '("" "cttools" t))


(add-hook 'org-mode-hook #'abbrev-mode)

(setq org-emphasis-alist (quote (("*" bold "<b>" "</b>")
                                 ("/" italic "<i>" "</i>")
                                 ("_" underline "<span style=\"text-decoration:underline;\">" "</span>")
                                 ("=" org-code "<code>" "</code>" verbatim)
                                 ("~" org-verbatim "<code>" "</code>" verbatim))))

(setq org-export-with-smart-quotes t)

(setq user-full-name "Alexander Prähauser")
(setq org-latex-compiler "lualatex")
