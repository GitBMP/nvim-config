return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      ensure_installed = { "pyright", "clangd" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      vim.lsp.config("pyright", {})
      vim.lsp.config("clangd", {})
      vim.lsp.enable("pyright")
      vim.lsp.enable("clangd")

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
