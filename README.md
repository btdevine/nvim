# Changelog

I'm trying to make minimal changes to the default LazyVim config, so any changes made will be explained here.

## 10/2/24

- Added `plugins/lsp-config.lua` to change the base command from `cargo check` to `cargo clippy`, enabling inline Clippy linting.

## 9/14/24

- Added Markdown features. To make `:MarkdownPreview` work (and not fail with printing the Node version), per [this issue](https://github.com/iamcco/markdown-preview.nvim/issues/695#issue-2483430386), I ran:

```bash
cd ~/.local/share/nvim/lazy/markdown-preview.nvim
npm install
```

## 9/12/24

- Not a code-level change, but running `:MasonInstall rust-analyzer` upgrades rust-analyzer, fixing proc macro issues. Having a Mason-managed rust-analyzer is desirable so that auto-imports work properly.
