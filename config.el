;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq doom-theme 'doom-one)
(setq display-line-numbers-type t)

(remove-hook! csharp-mode-local-vars #'lsp)
(remove-hook! csharp-mode-local-vars-hook #'lsp)
(remove-hook! 'csharp-mode-local-vars #'lsp)
(remove-hook! 'csharp-mode-local-vars-hook #'lsp)
(after! csharp-mode
  (remove-hook! 'csharp-mode-local-vars #'lsp)
  (remove-hook! 'csharp-mode-local-vars-hook #'lsp)
  (remove-hook! csharp-mode-local-vars #'lsp)
  (remove-hook! csharp-mode-local-vars-hook #'lsp))
(after! csharp-tree-sitter
  (remove-hook! 'csharp-mode-local-vars #'lsp)
  (remove-hook! 'csharp-mode-local-vars-hook #'lsp)
  (remove-hook! csharp-mode-local-vars #'lsp)
  (remove-hook! csharp-mode-local-vars-hook #'lsp))
