return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = { "lua_ls", "rust_analyzer", "gopls", "ts_ls", "pyright", "eslint", "tailwindcss", "intelephense", "djlsp", },
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
}
