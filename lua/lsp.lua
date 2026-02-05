-- lua/lsp.lua

local function on_attach(_, bufnr)
  local map = vim.keymap.set
  local opts = { buffer = bufnr, silent = true }

  -- navigation
  map("n", "gd", vim.lsp.buf.definition, opts)
  map("n", "gD", vim.lsp.buf.declaration, opts)
  map("n", "gi", vim.lsp.buf.implementation, opts)
  map("n", "gr", vim.lsp.buf.references, opts)
  map("n", "gy", vim.lsp.buf.type_definition, opts)

  -- info
  map("n", "K", vim.lsp.buf.hover, opts)
  map("n", "<C-k>", vim.lsp.buf.signature_help, opts)

  -- actions
  map("n", "<leader>la", vim.lsp.buf.code_action, opts)
  map("n", "<leader>lr", vim.lsp.buf.rename, opts)
  map("n", "<leader>lf", function()
    vim.lsp.buf.format { async = true }
  end, opts)

  -- diagnostics
  map("n", "[d", vim.diagnostic.goto_prev, opts)
  map("n", "]d", vim.diagnostic.goto_next, opts)
  map("n", "<leader>ld", vim.diagnostic.open_float, opts)
end

-- Lua
vim.lsp.config("lua_ls", {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
    },
  },
})

-- Python
vim.lsp.config("pyright", {
  on_attach = on_attach,
})

-- TypeScript
vim.lsp.config("ts_ls", {
  on_attach = on_attach,
})

-- GoLang
vim.lsp.config("gopls", {
  on_attach = on_attach,
})

-- HTML, CSS, & Javascript
vim.lsp.config("eslint", {
  on_attach = on_attach, 
})

-- Tailwind CSS
vim.lsp.config("tailwindcss", {
  on_attach = on_attach, 
})

-- PHP
vim.lsp.config("intelephense", {
  on_attach = on_attach,
})

-- Django
vim.lsp.config("djlsp", {
  on_attach = on_attach,
})


