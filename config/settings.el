(add-to-list 'load-path "~/.emacs.d/help+")
(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/icicles")
;; (add-to-list 'load-path "~/.emacs.d/site-lisp/w3m/")
;; (add-to-list 'load-path "~/.emacs.d/site-lisp/emacs-application-framework")

(load "~/.emacs.d/site-lisp/icicles-install")

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))


(with-eval-after-load 'package
  (add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/nongnu/")))


(add-to-list 'default-frame-alist '(fullscreen . maximized)) 

;; (add-to-list 'load-path "~/.emacs.d/vlc-rc")


(setq font-use-system-font t) 
