(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

(add-to-list 'load-path "~/.emacs.d/custom")

;; Root directory
(setq root-dir (file-name-directory
                (or (buffer-file-name) load-file-name)))
(evil-mode t)
(global-linum-mode t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)
(setq x-select-enable-clipboard t)

(load-theme 'base16-tomorrow t)
(set-frame-font "Inconsolata-g-15" nil)
(set-face-attribute 'default nil :font "Inconsolata-g-15")

;; Git
(require 'magit)
(eval-after-load 'magit
  (progn '(global-set-key (kbd "C-x g") 'magit-status)))

(load "evil-bindings.el")