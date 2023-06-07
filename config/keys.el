 (bind-key* "C-e" 'previous-line)
(bind-key* "C-a" 'backward-char)

(bind-key* "C-t" 'forward-char)
(bind-key* "C-r" 'next-line)

(bind-key* "C-o" 'move-beginning-of-line)
(bind-key* "C-d" 'move-end-of-line)

(bind-key* "M-o" 'move-end-of-sentence)
(bind-key* "M-d" 'move-beginning-of-sentence)

(bind-key* "C-<right>" 'backward-word)
(bind-key* "C-1" 'forward-word)

(bind-key* "M-τ" 'beginning-of-buffer)
(bind-key* "M-ν" 'end-of-buffer)


(bind-key* "C-i" 'isearch-backward)
(define-key isearch-mode-map (kbd "C-i") 'isearch-repeat-backward)

(bind-key* "C-{" 'isearch-backward-regexp)

(bind-key* "C-n" 'isearch-forward)
(define-key isearch-mode-map (kbd "C-n") 'isearch-repeat-forward)

(bind-key* "C--" 'isearch-forward-regexp)

(bind-key* "M-n" 'replace-string)
(bind-key* "M--" 'replace-regexp)

(bind-key* "M-C-n" 'query-replace)
(bind-key* "M--" 'query-replace-regexp)

 
(bind-key* "C-," 'set-mark-command)

(bind-key* "C-j" 'recenter-top-bottom)

(bind-key* "C-<tab>" 'other-frame)

(bind-key* "C-b" 'icicle-complete)
(bind-key* "C-z" 'hippie-expand)

(bind-key* "M-t" 'easy-mark)

(bind-key* [remap kill-ring-save] 'easy-kill)

(bind-key* "M-r" 'overwrite-mode)

(global-set-key (kbd "C-x C-b") 'helm-recentf)
(global-set-key (kbd "C-x C-\"") 'helm-find-files)

;; (bind-key* "M-ι" 'pop-tag-mark)
;; (bind-key* "M-C-ι" 'pop-global-mark)

(bind-key* "C-ι" 'backward-forward-previous-location)
(bind-key* "C-α" 'backward-forward-next-location)


(bind-key* "M-∧" 'upcase-region)
(bind-key* "M-∨" 'downcase-region)

;;Tab settings
(bind-key* "C-↓" 'tab-new)
(bind-key* "C-↑" 'tab-close) 
(bind-key* "C-←" 'tab-previous)
(bind-key* "C-→" 'tab-next)
(bind-key* "C-∈" 'tab-undo)



;;global org-settings
(bind-key* "C-c ;" #'org-store-link)
(bind-key* "C-c ^" #'org-agenda)
(bind-key* "C-c \"" #'org-capture)



;; undo-tree-keys
(bind-key* "C-\"" 'undo-tree-undo)
(bind-key* "C-l" 'undo-tree-redo)
(bind-key* "M-j" 'undo-tree-switch-branch)
(bind-key* "M-l" 'undo-tree-visualize)
(bind-key* "C-f M-ä" 'undo-tree-save-state-to-register)
(bind-key* "C-f M-l" 'undo-tree-restore-state-from-register)

(global-unset-key (kbd "<XF86Launch6>"))
(define-key function-key-map (kbd "<XF86Launch6>") 'event-apply-meta-modifier)

(global-unset-key (kbd "<kp-8>"))
(define-key function-key-map (kbd "<kp-8>") 'event-apply-control-modifier)

(global-unset-key (kbd "<kp-9>"))
(define-key function-key-map (kbd "<kp-9>") 'event-apply-meta-modifier)

(bind-key* "C-p" 'indent-for-tab-command)

(bind-key* "C-<tab>" 'tab-to-tab-stop)

(bind-key* "C-s" 'w3m-search)

;;cdlatex-keybinds
(global-unset-key (kbd "<XF86Launch5>"))
(bind-key* "<XF86Launch5>" 'cdlatex-math-symbol)
(setq cdlatex-math-symbol-prefix ?´)

(bind-key "<right>" 'cdlatex-tab cdlatex-mode-map)
(bind-key "\"" 'cdlatex-math-modify cdlatex-mode-map)



;;aya-keybinds
(bind-keys :prefix-map aya-map :prefix (kbd "C-!")
	   ("e" . aya-create)
	   ("r" . aya-expand-from-history)
	   ("c" . aya-delete-from-history)
	   ("," . aya-clear-history)
	   ("t" . aya-next-in-history)
	   ("a" . aya-previous-in-history)
	   ("p" . aya-presist-snippet)
	   ("f" . aya-open-line)
	   )

(bind-key* "C-?"     #'aya-expand)


(bind-key* "C-." 'ace-jump-mode)


(bind-key* "M-→" 'windmove-right)
(bind-key* "M-↑" 'windmove-up)
(bind-key* "M-←" 'windmove-left)
(bind-key* "M-↓" 'windmove-down)


(bind-key* "M-f" 'free-keys)
(bind-key* "M-j" 'helm-descbinds)
 

(bind-key "M-c" 'cdlatex-mode org-mode-map)

;;(define-key pdf-view-mode-map (kbd "M-n") 'org-noter)
;;(define-key pdf-view-mode-map (kbd "C-s") 'isearch-forward))

(bind-key "f" 'find-name-dired dired-mode-map)
(bind-key "M-m" 'dired-mark-suffix dired-mode-map)


(bind-key "C-c C-r" 'eval-region emacs-lisp-mode-map)
(bind-key "C-c C-b" 'eval-buffer emacs-lisp-mode-map)


(with-eval-after-load "pdf-view"
  (define-key pdf-view-mode-map (kbd "C-n") #'org-noter))


(bind-key "<previous>" 'helm-previous-source helm-map)
(bind-key "<next>" 'helm-next-source helm-map)


(define-key projectile-mode-map (kbd "M-\"") 'projectile-command-map)
			
(bind-keys :prefix-map miscellaneous-map :prefix (kbd "C-^")
	   ("m" . mu4e-modeline-mode)
	   ("^" . tab-to-tab-stop)
	   ("s" . TeX-command-toggle-shell-escape)
	   ("M" . magit)
	   ("l" . list-packages)	  	   
	   )

(bind-keys :prefix-map miscellaneous-map :prefix (kbd "C-<dead-circumflex>")
	   ("m" . mu4e-modeline-mode)
	   ("^" . tab-to-tab-stop)
	   ("s" . TeX-command-toggle-shell-escape)
	   ("M" . magit)
	   ("l" . list-packages)	  	   
	   )



;; :prefix (kbd "C-<dead-circumflex>")
;; (define-key helm-map (kbd "C-d") #'helm-next-source)


;; (define-key org-mode-map (kbd "C-ſ") #'cdlatex-mode)
;; (define-key org-mode-map (kbd "C-\"") #'undo-tree-undo)
;; ;; (define-key org-mode-map (kbd "") #'undo-tree-undo)
;; (define-key org-mode-map (kbd "C-,") #'set-mark-command)
;; (define-key org-mode-map (kbd "C-j") #'recenter-top-bottom)




;; (define-key helm-map (kbd "C-e") #'helm-previous-line)
;; (define-key helm-map (kbd "C-r") #'helm-next-line)
;; (define-key helm-map (kbd "C-)") #'helm-minibuffer-history)

;; (define-key w3m-mode-map (kbd "C-a") 'backward-char)
;; (define-key w3m-mode-map (kbd "C-t") 'forward-char)
;; (define-key w3m-mode-map (kbd "C-e") 'previous-line)
;; (define-key w3m-mode-map (kbd "C-r") 'next-line)
;; (define-key w3m-mode-map (kbd "C-o") 'move-beginning-of-line)
;; (define-key w3m-mode-map (kbd "C-d") 'move-end-of-line)

;; (define-key w3m-mode-map (kbd "<prior>") 'move-beginning-of-line)
;; (define-key w3m-mode-map (kbd "<next>") 'move-end-of-lrine)

;;(define-key mu4e--compose-mode-map (kbd "C-a") 'backward-char)
