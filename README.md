# Changelog

## 2/13/26

I'm trying to make minimal changes to the default LazyVim config, so any changes made will be explained here.

Added the following to init.lua:

```lua
-- For yank/paste in Docker container
vim.g.clipboard = "osc52"
vim.opt.clipboard = "unnamedplus"

```

## 10/6/24

- Ensure ESLint is used to format TS files (especially React files): added `/plugins/conform.lua`. For example, this enables imports to be auto-sorted.

## 10/4/24

- My root dir for grepping (and for Neotree as well, I believe) has been constantly changing for a while. Added to `config/options.lua` the following line, per [this Reddit thread](https://www.reddit.com/r/neovim/comments/1ajpdrx/comment/kpnjf9l/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button).

`vim.g.root_spec = { "cwd" }`

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
