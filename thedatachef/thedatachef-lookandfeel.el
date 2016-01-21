(require 'ansi-color)

;; Custom font
(setq myfont "Bitstream Vera Sans Mono-11:bold")

(progn (set-default-font myfont)
       (add-to-list 'default-frame-alist (cons 'font myfont)))


;; ================
;; eshell colors!
;; ================
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(setq ssh-directory-tracking-mode t)

(provide 'thedatachef-lookandfeel)
