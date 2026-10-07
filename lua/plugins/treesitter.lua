return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    if vim.fn.has("win32") == 1 then
      require("nvim-treesitter.install").compilers = { "zig" }
    end

    local languages = {
      "python", "cpp", "javascript",
      "html", "css", "json", "lua", "rust", "toml",
    }

    require("nvim-treesitter").install(languages)

    vim.api.nvim_create_autocmd("FileType", {
      pattern = languages,
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
  end,
}
