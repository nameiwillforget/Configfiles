(setq-default abbrev-mode t)




 (defadvice expand-abbrev (after my-expand-abbrev activate)
   ;; if there was an expansion
   (if ad-return-value
       ;; start idle timer to ensure insertion of abbrev activator
       ;; character (e.g. space) is finished
       (run-with-idle-timer 0 nil
                            (lambda ()
                              ;; if there is the string "@@" in the
                              ;; expansion then move cursor there and
                              ;; delete the string
                              (let ((cursor "@@"))
                                (if (search-backward cursor last-abbrev-location t)
                                    (delete-char (length cursor))))))))
