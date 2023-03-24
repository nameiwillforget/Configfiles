(global-undo-tree-mode)
(yas-global-mode)
(wc-mode)
(global-visual-line-mode t)
(electric-pair-mode)
(helm-mode 1)
(savehist-mode 1)

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

(global-display-line-numbers-mode 1)



(menu-bar-mode -1) 
(scroll-bar-mode -1) 
(tool-bar-mode -1) 
