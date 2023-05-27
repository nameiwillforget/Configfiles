(setq dired-guess-shell-alist-user
      '(
       ("\\.mp3" "gnome-terminal -x sh -c 'mplayer -af scaletempo * ' ")
       ("\\.mkv" "mplayer")
))

(setq delete-by-moving-to-trash t)

 (defun dired-get-size ()
  (interactive)
  (let ((files (dired-get-marked-files)))
    (with-temp-buffer
      (apply 'call-process "/usr/bin/du" nil t nil "-sch" files)
      (message "Size of all marked files: %s"
               (progn 
                 (re-search-backward "\\(^[0-9.,]+[A-Za-z]+\\).*total$")
                  (match-string 1))))))

 (define-key dired-mode-map (kbd "?") 'dired-get-size)
