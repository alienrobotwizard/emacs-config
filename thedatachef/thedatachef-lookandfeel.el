(require 'ansi-color)

;; Custom font
;; (ubuntu - apt-get install ttf-bitstream-vera)
(setq myfont "Bitstream Vera Sans Mono-14:normal")

(progn (set-default-font myfont)
       (add-to-list 'default-frame-alist (cons 'font myfont)))


;; ================
;; eshell colors!
;; ================
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(setq ssh-directory-tracking-mode t)

(provide 'thedatachef-lookandfeel)
