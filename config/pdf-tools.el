(use-package pdf-tools
  :ensure t
  :mode ("\\.pdf\\'" . pdf-view-mode)
  :pin manual
  :config
  (setq pdf-info-epdfinfo-program "/usr/local/bin/epdfinfo")
  )


(add-hook 'pdf-view-mode-hook 'pdf-view-midnight-minor-mode)

(setq pdf-view-midnight-colors '("#f8f8f2" . "#282a36"))


(defun bugfix-display-line-numbers--turn-on (fun &rest args)
  "Avoid `display-line-numbers-mode' in `image-mode' and related.
Around advice for FUN with ARGS."
  (unless (derived-mode-p 'image-mode 'docview-mode 'pdf-view-mode)
    (apply fun args)))

(advice-add 'display-line-numbers--turn-on :around #'bugfix-display-line-numbers--turn-on)

(add-hook 'pdf-view-mode-hook 'pdf-sync-minor-mode)
