return {
  "akinsho/bufferline.nvim",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup({
      options = {
        mouse_actions = true,
        diagnostics = "nvim_lsp",
        separator_style = "slant",
        show_buffer_close_icons = true,
        show_close_icon = false,
      },
    })
  end,
}
