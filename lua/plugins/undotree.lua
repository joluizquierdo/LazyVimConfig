return {
  "jiaoshijie/undotree",
  dependencies = "nvim-lua/plenary.nvim",
  config = true,
  keys = {
    {
      "<leader>U",
      function()
        require("undotree").toggle()
      end,
      desc = "Toggle Undotree",
    },
  },
}
