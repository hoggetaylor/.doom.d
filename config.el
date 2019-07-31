;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setenv "PATH" (concat (getenv "PATH") ":/Users/taylor/flutter/bin/cache/dart-sdk/bin"))
(setq exec-path (append exec-path '("/Users/taylor/flutter/bin/cache/dart-sdk/bin")))

(add-hook 'dart-mode-hook 'lsp)
(with-eval-after-load "projectile"
  (add-to-list 'projectile-project-root-files-bottom-up "pubspec.yaml")
  (add-to-list 'projectile-project-root-files-bottom-up "BUILD"))
(setq lsp-auto-guess-root t)

(with-eval-after-load "org"
  (add-to-list 'org-modules 'org-habit))


(defun ebook-font-setup ()
  (face-remap-add-relative 'variable-pitch :family "Menlo"
                                           :height 1.5))
(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))
(setq nov-text-width 80)
(add-hook 'nov-mode-hook 'ebook-font-setup)
