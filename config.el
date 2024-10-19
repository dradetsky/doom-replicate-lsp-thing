;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq doom-theme 'doom-one)
(setq display-line-numbers-type t)

(remove-hook! csharp-mode-local-vars #'lsp!)
(remove-hook! csharp-mode-local-vars-hook #'lsp!)
(remove-hook! 'csharp-mode-local-vars #'lsp!)
(remove-hook! 'csharp-mode-local-vars-hook #'lsp!)
(after! csharp-mode
  (remove-hook! 'csharp-mode-local-vars #'lsp!)
  (remove-hook! 'csharp-mode-local-vars-hook #'lsp!)
  (remove-hook! csharp-mode-local-vars #'lsp!)
  (remove-hook! csharp-mode-local-vars-hook #'lsp!))
(after! csharp-tree-sitter
  (remove-hook! 'csharp-mode-local-vars #'lsp!)
  (remove-hook! 'csharp-mode-local-vars-hook #'lsp!)
  (remove-hook! csharp-mode-local-vars #'lsp!)
  (remove-hook! csharp-mode-local-vars-hook #'lsp!))

;; i want lsp, but only on-demand.
(remove-hook! '(c-mode-local-vars-hook
                c++-mode-local-vars-hook
                objc-mode-local-vars-hook
                cmake-mode-local-vars-hook)
  #'lsp!)
