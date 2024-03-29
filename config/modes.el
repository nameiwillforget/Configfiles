(global-undo-tree-mode)
(yas-global-mode)
(wc-mode)
(global-visual-line-mode t)
(electric-pair-mode)
(helm-mode 1)
(savehist-mode 1)
(global-display-line-numbers-mode 1)
(icy-mode 1)
(dynamic-completion-mode 1)


;(ac-config-default)
(add-to-list 'ac-modes 'latex-mode)   ; make auto-complete aware of `latex-mode`
(defun ac-latex-mode-setup ()         ; add ac-sources to default ac-sources
  (setq ac-sources
     (append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
               ac-sources)))

(add-hook 'TeX-mode-hook 'ac-latex-mode-setup)
;(add-hook 'TeX-mode-hook 'auto-complete-mode)

(ac-flyspell-workaround)



(backward-forward-mode 1)

;(flyspell-lazy-mode 1)
(add-hook 'flyspell-mode-hook (lambda () (auto-dictionary-mode 1)))


(epa-file-enable)


(global-prettify-symbols-mode 1)
(setq prettify-symbols-unprettify-at-point 'right-edge)

(setq winner-mode t)
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

(recentf-mode 1)
(setq-default recent-save-file "~/.emacs.d/recentf")

(setq helm-ff-file-name-history-use-recentf t)

;; (put 'upcase-region 'disabled nil) 

;; (setq smudge 1)


(dired-quick-sort-setup)


(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

 (eval-after-load "isearch" '(require 'isearch+))


(define-derived-mode writer-mode text-mode "W-EN"
  "Writer mode."
  (abbrev-mode 1))

(define-derived-mode writer-english-mode writer-mode "W-EN"
  "Writer mode - English.")

(define-derived-mode writer-german-mode writer-mode "W-DE"
  "Writer mode - German.")

(defun writer- ()
  (interactive)
  (writer-german-mode)
  (set-input-method 'german-postfix)
  (setq header-line-format " DE> ")
  (setq mode-line-format nil)
  (ispell-deutsch)
  (flyspell-mode -1)
  (writer-setup-bindings))

(defun writer-english ()
  (interactive)
  (writer-english-mode)
  (deactivate-input-method)
  (setq header-line-format " EN> ")
  (setq mode-line-format nil)
  (ispell-english)
;  (flyspell-mode 1)
  (writer-setup-bindings))




(define-derived-mode abbrev-org-mode org-mode "O-EN"
  "Org mode."
  (abbrev-mode 1))

(define-derived-mode org-english-mode org-mode "O-EN"
  "Org mode - English.")

(define-derived-mode org-german-mode org-mode "O-DE"
  "Org mode - German.")

(defun org- ()
  (interactive)
  (org-german-mode)
  (set-input-method 'german-postfix)
  (setq header-line-format " DE> ")
  (setq mode-line-format nil)
  (ispell-deutsch)
  (flyspell-mode -1)
  (org-setup-bindings)
  )

;; (let ((org-german-mode-map (make-sparse-keymap)))
;;   (set-keymap-parent org-german-mode-map org-mode-map)
;;   (define-key org-german-mode-map (kbd "\"") '\ü)
;; )



(defun org-english ()
  (interactive)
  (org-english-mode)
  (deactivate-input-method)
  (setq header-line-format " EN> ")
  (setq mode-line-format nil)
  (ispell-english)
;  (flyspell-mode 1)
  (org-setup-bindings))


(menu-bar-mode -1) 
(scroll-bar-mode -1) 
(tool-bar-mode -1) 
 
(add-to-list 'auto-mode-alist '("\\.de\\'" . org-german-mode))
