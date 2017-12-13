;; derived from http://ergoemacs.org/emacs/elisp_converting_hex_decimal.html 
(defun surrogate-pair ()
  "Replaces the hexadecimal string under the cursor with the unicode surrogate pair.

Test cases
  1D552 (&aopf;)
  \uD835\uDD52 (&aopf;)
"

  (interactive )

  (let (inputStr tempStr p1 p2 n u1 u2 resultStr)
    (save-excursion
      (search-backward-regexp "[^0-9A-Fa-f]" nil t)
      (forward-char)
      (setq p1 (point) )
      (re-search-forward "[^0-9A-Fa-f]" nil t)
      (backward-char)
      (setq p2 (point) ) )
    
    (setq inputStr (buffer-substring-no-properties p1 p2) )

    (let ((case-fold-search nil) )
      (setq tempStr (replace-regexp-in-string "^" "" inputStr ))
      )

    ;; See http://www.russellcottrell.com/greek/utilities/SurrogatePairCalculator.htm#info
    (setq n (string-to-number tempStr 16 ))
    (setq u1 (+ (/ (- n #x10000) #x400) #xD800))
    (setq u2 (+ (% (- n #x10000) #x400) #xDC00))
    (setq resultStr (format "\\u%04X\\u%04X" u1 u2))
    (message "Surrogate pair for %s is %s" tempStr resultStr )
    (delete-region p1 p2)
    (goto-char p1)
    (insert resultStr)
    ))

