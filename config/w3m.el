(setq w3m-search-default-engine '"duckduckgo")  

(defadvice w3m-search (after change-default activate)
      (let ((engine (nth 1 minibuffer-history)))
	(when (assoc engine w3m-search-engine-alist)
	  (setq w3m-search-default-engine engine))))

(setq w3m-external-view-temp-directory '"~/Downloads")



