-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.laststatus = 3
vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_compiler_latexmk = {
  executable = "latexmk",
  options = {
    "-pdf",
    "-interaction=nonstopmode",
    "-file-line-error",
    "-synctex=1",
  },
}

vim.filetype.add({
  extension = {
    jinja = "jinja",
    jinja2 = "jinja",
    j2 = "jinja", -- Maps .j2 to jinja filetype
    -- html = "jinja",  -- Optional for HTML files
  },
})

-- Native inline completions don't support being shown as regular completions
vim.g.ai_cmp = true
