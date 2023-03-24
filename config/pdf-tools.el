(use-package pdf-tools
  :ensure t
  :mode ("\\.pdf\\'" . pdf-view-mode)
  :pin manual
  :config
  (setq pdf-info-epdfinfo-program "/usr/local/bin/epdfinfo")
  )


  (add-hook 'pdf-view-mode-hook 'pdf-view-midnight-minor-mode )

(setq pdf-view-midnight-colors '("#f8f8f2" . "#282a36"))
