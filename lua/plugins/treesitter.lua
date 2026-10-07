return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    if vim.fn.has("win32") == 1 then
      require("nvim-treesitter.install").compilers = { "zig" }
    end

    require("nvim-treesitter").setup({
      ensure_installed = {
        "python", "cpp", "javascript",
        "html", "css", "json", "lua"
      },
    })
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "python", "cpp", "javascript", "html", "css", "json", "lua" },
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}
