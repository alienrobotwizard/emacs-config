(require 'web-mode)
(require 'js2-mode)
(require 'nvm)
(nvm-use (caar (last (nvm--installed-versions))))

(add-to-list 'auto-mode-alist '("\\.jsx?$" . web-mode))
(with-eval-after-load 'web-mode
   
  (setq web-mode-markup-indent-offset 2
        web-mode-css-indent-offset 2
        web-mode-code-indent-offset 2)
  (with-eval-after-load 'flycheck
    (push 'web-mode (flycheck-checker-get 'javascript-eslint 'modes))))

(with-eval-after-load 'js
  (setq js-indent-level 2))

(provide 'thedatachef-javascript)
