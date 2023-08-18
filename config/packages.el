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
(require 'icicles)
(require 'projectile)
(require 'dired-quick-sort)
(require 'gnus-dired)
;; (require 'ace-flyspell)
;; (require 'flyspell-lazy)
(require 'flyspell-correct-helm)
(require 'auto-dictionary)

(require 'yaml-mode)

(require 'epa)

(require 'auto-complete-config)
(require 'ac-math)
(require 'auto-complete-auctex)

(require 'savehist)
(add-to-list 'savehist-additional-variables 'helm-dired-history-variable)

 (require 'auto-install)
(setq auto-install-save-confirm nil)


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


(quelpa
 '(quelpa-use-package
   :fetcher git
   :url "https://github.com/quelpa/quelpa-use-package.git"))
(require 'quelpa-use-package)

(use-package bookmark+
             :quelpa (bookmark+ :fetcher wiki
                                    :files
                                    ("bookmark+.el"
                                     "bookmark+-mac.el"
                                     "bookmark+-bmu.el"
                                     "bookmark+-1.el"
                                     "bookmark+-key.el"
                                     "bookmark+-lit.el"
                                     "bookmark+-doc.el"
                                     "bookmark+-chg.el"))
             :defer 2)

(use-package isearch-prop
             :quelpa (isearch-prop :fetcher wiki
                                    :files
                                    ("isearch-prop.el"))
             :defer 2)

(use-package isearch+
             :quelpa (isearch+ :fetcher wiki
                                    :files
                                    ("isearch+.el"))
             :defer 2)




;; (use-package icicles
;;              :quelpa (icicles :fetcher wiki
;;                                 :files
;; (  "col-highlight.el"           ; Column highlighting
;;    "crosshairs.el"              ; Crosshairs highlighting
;;    "doremi.el"                  ; Change incrementally (requires ring+.el)
;;    "hexrgb.el"                  ; Color manipulation
;;    "hl-line+.el"                ; Line highlighting
;;    "icicles.el"                 ; Main library - just loads the others
;;    "icicles-chg.el"             ; Change logs
;;    "icicles-doc1.el"            ; Doc, part 1
;;    "icicles-doc2.el"            ; Doc, part 2
;;    "icicles-cmd1.el"            ; Top-level Icicles commands, part 1
;;    "icicles-cmd2.el"            ; Top-level Icicles commands, part 2
;;    "icicles-face.el"            ; Faces
;;    "icicles-fn.el"              ; Non-interactive functions
;;    "icicles-mac.el"             ; Macros
;;    "icicles-mcmd.el"            ; Minibuffer commands
;;    "icicles-mode.el"            ; Icicle (Icy) mode
;;    "icicles-opt.el"             ; User options
;;    "icicles-var.el"             ; Internal variables
;;    "icomplete+.el"              ; Enhancements to `icomplete.el'
;;    "lacarte.el"                 ; Menu-bar access from keyboard
;;    "ring+.el"                   ; Ring stuff (required by doremi.el
;;    "synonyms.el"                ; Synonym lookup
;;    "vline.el"                   ; Column highlighting
;;    "apropos-fn+var.el"
;;    "bookmark+.el"
;;    "dired+.el"
;;    "doremi-frm.el"
;;    "ffap-.el"
;;    "fit-frame.el"
;;    "fuzzy-match.el"
;;    "info+.el"
;;    "linkd"
;;    "menu-bar+.el"
;;    "misc-cmds.el"
;;    "palette.el"
;;    "pp+.el"
;;    "thingatpt+.el"
;;    "wid-edit+.el"
;; ))
;;                  :defer 2)


;; (use-package vlc-rc
;; :config
;; (global-set-key (kbd "C-c V")'vlc-rc-map)
;; )
;; (use-package telega)
;; (setq telega-server-libs-prefix '/var/lib/pacman/local/)

