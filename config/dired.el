(setq dired-guess-shell-alist-user
      '(
       ("\\.mp3" "gnome-terminal -x sh -c 'mplayer -af scaletempo * ' ")
       ("\\.mkv" "mplayer")
))
