return {
  {
    "Everblush/nvim",
    name = "everblush",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("everblush")
    end,
  },
}
