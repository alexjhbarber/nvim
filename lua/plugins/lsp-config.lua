return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = {
          "lua_ls",       -- Lua
          "pyright",      -- Python
          "ts_ls",        -- JS/TS
          "intelephense", -- PHP
          "html",         -- HTML
          "cssls",        -- CSS
          "jsonls",       -- JSON
          "bashls",       -- Bash
          "yamlls",       -- YAML
        },       
        automatic_enable = false
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      
      -- Setup each LSP
      local servers = {
        "lua_ls",
        "pyright",
        "ts_ls",
        "intelephense",
        "html",
        "cssls",
        "jsonls",
        "bashls",
        "yamlls",
      }

      for _, server in ipairs(servers) do
        lspconfig[server].setup({})
      end


      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    end,
  }
}
