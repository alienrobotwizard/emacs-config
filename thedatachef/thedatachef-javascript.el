(require 'web-mode)
(require 'js2-mode)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(add-to-list 'auto-mode-alist '("\\.jsx$" . js2-jsx-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; json
(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))

(provide 'thedatachef-javascript)
