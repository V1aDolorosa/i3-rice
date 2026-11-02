return {
  {
    "gleachkr/nippy.nvim",
    config = function()
      require("nippy").setup()

      local nippy = require("nippy")
      vim.keymap.set("n", "<leader>rc", nippy.run_cell, { desc = "Run Python cell" })
      vim.keymap.set("n", "<leader>rn", nippy.run_cell_advance, { desc = "Run cell and advance" })
      vim.keymap.set("n", "<leader>ra", nippy.run_all, { desc = "Run all cells" })
    end,
  },
}
