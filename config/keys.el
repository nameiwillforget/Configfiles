(global-set-key (kbd "C-e") 'previous-line)
(global-set-key (kbd "C-a") 'backward-char)

(global-set-key (kbd "C-t") 'forward-char)
(global-set-key (kbd "C-r") 'next-line)

(global-set-key (kbd "C-o") 'move-beginning-of-line)
(global-set-key (kbd "C-d") 'move-end-of-line)

(global-set-key (kbd "M-o") 'move-end-of-sentence)
(global-set-key (kbd "M-d") 'move-beginning-of-sentence)

(global-set-key (kbd "C-}") 'backward-word)
(global-set-key (kbd "C-(") 'forward-word)
 
(global-set-key (kbd "C-i") 'isearch-backward)
(define-key isearch-mode-map (kbd "C-i") 'isearch-repeat-backward)

(global-set-key (kbd "C-{") 'isearch-backward-regexp)

(global-set-key (kbd "C-n") 'isearch-forward)
(define-key isearch-mode-map (kbd "C-n") 'isearch-repeat-forward)

(global-set-key (kbd "C--") 'isearch-forward-regexp)

(global-set-key (kbd "M-n") 'replace-string)
(global-set-key (kbd "M--") 'replace-regexp)
 
(global-set-key (kbd "C-ü") 'set-mark-command)
(global-set-key (kbd "C-ß") 'set-mark-command)

(global-set-key (kbd "C-ä") 'recenter-top-bottom)

(global-set-key (kbd "C-j") 'universal-argument)

(global-unset-key (kbd "<XF86Launch6>"))
(define-key key-translation-map (kbd "<XF86Launch6>") 'event-apply-meta-modifier)

(global-set-key (kbd "C-ö") 'tab-to-tab-stop)

(global-set-key (kbd "C-b") 'newline)

(global-set-key (kbd "C-<tab>") 'other-frame)

(global-set-key (kbd "C-b") 'icicle-complete)



;;cdlatex-settings
(global-unset-key (kbd "<XF86Launch5>"))
(global-set-key (kbd "<XF86Launch5>") 'cdlatex-math-symbol)
(setq cdlatex-math-symbol-prefix ?´)



;;helm-settings
(global-set-key (kbd "C-x C-b") 'helm-recentf)

;; (global-set-key (kbd "C-x C-j") 'helm-find-files)
;; (global-set-key (kbd "C-x C-M-j") 'helm-find-files)

(global-set-key (kbd "C-x C-u") 'find-file)
(global-set-key (kbd "C-x C-j") 'upcase-region)


;;global org-settings
(global-set-key (kbd "C-c ä") #'org-store-link)
(global-set-key (kbd "C-c ö") #'org-agenda)
(global-set-key (kbd "C-c j") #'org-capture)



;; undo-tree-keys
(global-set-key (kbd "C-u") 'undo-tree-undo)
(global-set-key (kbd "C-l") 'undo-tree-redo)
(global-set-key (kbd "M-j") 'undo-tree-switch-branch)
(global-set-key (kbd "M-l") 'undo-tree-visualize)
(global-set-key (kbd "C-x M-j") 'undo-tree-save-state-to-register)
(global-set-key (kbd "C-x M-l") 'undo-tree-restore-state-from-register)


(global-set-key (kbd "C-e") 'previous-line)
(global-set-key (kbd "C-a") 'backward-char)

(global-set-key (kbd "C-t") 'forward-char)
(global-set-key (kbd "C-r") 'next-line)

(global-set-key (kbd "C-o") 'move-beginning-of-line)
(global-set-key (kbd "C-d") 'move-end-of-line)

(global-set-key (kbd "M-o") 'move-end-of-sentence)
(global-set-key (kbd "M-d") 'move-beginning-of-sentence)

(global-set-key (kbd "C-}") 'backward-word)
(global-set-key (kbd "C-(") 'forward-word)
 
(global-set-key (kbd "C-i") 'isearch-backward)
(define-key isearch-mode-map (kbd "C-i") 'isearch-repeat-backward)

(global-set-key (kbd "C-{") 'isearch-backward-regexp)

(global-set-key (kbd "C-n") 'isearch-forward)
(define-key isearch-mode-map (kbd "C-n") 'isearch-repeat-forward)

(global-set-key (kbd "C--") 'isearch-forward-regexp)

(global-set-key (kbd "M-n") 'replace-string)
(global-set-key (kbd "M--") 'replace-regexp)
 
(global-set-key (kbd "<kp-1>") 'set-mark-command)
(global-set-key (kbd "<kp-2>") 'set-mark-command)

(global-set-key (kbd "C-ä") 'recenter-top-bottom)

(global-unset-key (kbd "<XF86Launch6>"))
(define-key key-translation-map (kbd "<XF86Launch6>") 'event-apply-meta-modifier)

(global-set-key (kbd "C-ö") 'tab-to-tab-stop)

(global-set-key (kbd "C-S") 'w3m-search)


;;cdlatex-settings
(global-unset-key (kbd "<XF86Launch5>"))
(global-set-key (kbd "<XF86Launch5>") 'cdlatex-math-symbol)
(setq cdlatex-math-symbol-prefix ?´)



;;helm-settings
(global-set-key (kbd "C-x C-j") 'helm-recentf)

;; (global-set-key (kbd "C-x C-j") 'helm-find-files)
;; (global-set-key (kbd "C-x C-M-j") 'helm-find-files)

(global-set-key (kbd "C-x C-j") 'find-file)



;;global org-settings
(global-set-key (kbd "C-c ä") #'org-store-link)
(global-set-key (kbd "C-c ö") #'org-agenda)
(global-set-key (kbd "C-c j") #'org-capture)



;; undo-tree-keys
(global-set-key (kbd "C-j") 'undo-tree-undo)
(global-set-key (kbd "C-l") 'undo-tree-redo)
(global-set-key (kbd "M-j") 'undo-tree-switch-branch)
(global-set-key (kbd "M-l") 'undo-tree-visualize)
(global-set-key (kbd "C-x M-j") 'undo-tree-save-state-to-register)
(global-set-key (kbd "C-x M-l") 'undo-tree-restore-state-from-register)



;;aya-settings
(define-key global-map (kbd "C-f") (make-sparse-keymap))

(global-set-key (kbd "C-f f") 'yas-insert-snippet)

(global-set-key (kbd "C-f e")   #'aya-create)
(global-set-key (kbd "C-p")     #'aya-expand)
(global-set-key (kbd "C-f r")   #'aya-expand-from-history)
(global-set-key (kbd "C-f c")   #'aya-delete-from-history)
(global-set-key (kbd "C-f ,")   #'aya-clear-history)
(global-set-key (kbd "C-f t")   #'aya-next-in-history)
(global-set-key (kbd "C-f a")   #'aya-previous-in-history)
(global-set-key (kbd "C-f p")   #'aya-persist-snippet)
(global-set-key (kbd "C-f f")   #'aya-open-line) 

(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(with-eval-after-load "org"
  (define-key org-mode-map (kbd "C-ſ") #'cdlatex-mode))

(with-eval-after-load "pdf-view"
  (define-key pdf-view-mode-map (kbd "C-n") #'org-noter))


(with-eval-after-load "dired"
  (define-key dired-mode-map (kbd "E") #'diredp-shell-command-this-file))

(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(define-key global-map (kbd "M-→") 'windmove-right)
(define-key global-map (kbd "M-↑") 'windmove-up)
(define-key global-map (kbd "M-←") 'windmove-left)
(define-key global-map (kbd "M-↓") 'windmove-down)


(define-key global-map (kbd "M-f") 'free-keys)
(define-key global-map (kbd "M-ä") 'helm-descbinds)
 

(define-key org-mode-map (kbd "C-ſ") #'cdlatex-mode)
(define-key org-mode-map (kbd "C-u") #'undo-tree-undo)
;; (define-key org-mode-map (kbd "") #'undo-tree-undo)



(with-eval-after-load "pdf-view"
  (define-key pdf-view-mode-map (kbd "C-n") #'org-noter))


(with-eval-after-load "dired"
  (define-key dired-mode-map (kbd "E") #'diredp-shell-command-this-file))

(with-eval-after-load "dired"
  (define-key dired-mode-map (kbd "f") #'find-name-dired))


(define-key emacs-lisp-mode-map (kbd "C-c C-r") #'eval-region)
(define-key emacs-lisp-mode-map (kbd "C-c C-b") #'eval-buffer)


(define-key helm-map (kbd "C-e") #'helm-previous-line)
(define-key helm-map (kbd "C-r") #'helm-next-line)
(define-key helm-map (kbd "C-o") #'helm-previous-source)
(define-key helm-map (kbd "C-d") #'helm-next-source)
(define-key helm-map (kbd "C-)") #'helm-minibuffer-history)


(define-key w3m-mode-map (kbd "C-a") 'backward-char)
(define-key w3m-mode-map (kbd "C-t") 'forward-char)
(define-key w3m-mode-map (kbd "C-e") 'previous-line)
(define-key w3m-mode-map (kbd "C-r") 'next-line)
(define-key w3m-mode-map (kbd "C-o") 'move-beginning-of-line)
(define-key w3m-mode-map (kbd "C-d") 'move-end-of-line)
