(require 'package)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; Install these packages if they do not exist
(defvar my-packages '(better-defaults idle-highlight twilight-theme
                                      js2-mode json-mode web-mode
                                      dockerfile-mode docker-tramp))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Everything is a meta key!
(setq       ns-option-modifier  'meta )
(setq       ns-command-modifier 'meta )
(setq       ns-command-modifier 'meta )


;; Dotfiles directory
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

(add-to-list 'load-path (concat dotfiles-dir "/starter-kit"))
(add-to-list 'load-path (concat dotfiles-dir "/thedatachef"))

(setq custom-file (concat dotfiles-dir "custom.el"))


(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)
(require 'tramp-cmds)

;; Taking a lot of stuff from old emacs starter kit
(require 'starter-kit-defuns)
(require 'starter-kit-bindings)
(require 'starter-kit-misc)
(require 'starter-kit-registers)
(require 'starter-kit-eshell)
(require 'starter-kit-lisp)
(require 'starter-kit-perl)
(require 'starter-kit-ruby)
(require 'thedatachef-keybindings)
(require 'thedatachef-javascript)
(require 'thedatachef-modes)
(require 'thedatachef-lookandfeel)

(load custom-file 'noerror)

;; Window size
(setq default-frame-alist '( (left . -1) (top . 0) (width . 170)  (height . 40) )) 
(setq initial-frame-alist '( (left . 0)  (top . 0) (width . 190) (height . 50) ))


;; Several mysterious but important customizations.
(set-input-mode t nil t)
(put 'eval-expression	 'disabled nil)
(put 'narrow-to-region	 'disabled nil)
(put 'upcase-region	 'disabled nil)
(put 'downcase-region	 'disabled nil)
(prefer-coding-system    'utf-8)
(setq default-tab-width 2)

;; Display column number on mode line	
(column-number-mode t)		
(setq ns-pop-up-frames nil)

;; COLOR!
(load-theme 'twilight)


;;; init.el ends here
