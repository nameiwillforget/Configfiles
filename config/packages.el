;; This is only needed once, near the top of the file
(eval-when-compile ;; Following line is not needed if use-package.el is in ~/.emacs.d
  ;;(add-to-list 'load-path "")
  (require 'use-package))
(require 'iso-transl)
(require 'helm)
(require 'undo-tree)
(require 'ace-jump-mode)
(require 'ox-latex)
(require 'dired-x)
(require 'w3m-load)
(require 'mime-w3m)
(require 'savehist)

(add-to-list 'savehist-additional-variables 'helm-dired-history-variable)

(with-eval-after-load 'dired
  (require 'helm-dired-history)
  (define-key dired-mode-map "," 'dired))

;;(require 'dired+)

;; (require 'smudge)
;; (require 'helm-swoop)
;;(require 'helm-autoloads)

(use-package tex
  :ensure auctex)
(use-package cdlatex :ensure t)
(use-package yasnippet)
(use-package yasnippet-snippets)

;; (use-package vlc-rc
;; :config
;; (global-set-key (kbd "C-c V")'vlc-rc-map)
;; )
;; (use-package telega)
;; (setq telega-server-libs-prefix '/var/lib/pacman/local/)
