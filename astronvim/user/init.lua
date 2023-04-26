vim.opt.colorcolumn = "79"

return {
  colorscheme = "catppuccin",

  plugins = {
    {
      "catppuccin/nvim",
      as = "catppuccin",
      config = function()
        require("catppuccin").setup {}
      end,
    },
  },
}

