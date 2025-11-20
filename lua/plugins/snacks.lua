return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    picker = {
      sources = {
        explorer = {
          win = {
            list = {
              keys = {
                -- Use Y in explorer to copy the *absolute* path
                ["Y"] = "copy_full_path",
              },
            },
          },
          actions = {
            copy_full_path = function(_, item)
              local path = item.file -- absolute path for this entry
              vim.fn.setreg("+", path) -- or "*" if you prefer
              vim.notify("Copied: " .. path)
            end,
          },
        },
      },
    },
  },
}
