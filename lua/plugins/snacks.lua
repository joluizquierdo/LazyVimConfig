return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true,
          win = {
            list = {
              keys = {
                -- Use Y in explorer to copy the *absolute* path
                ["Y"] = "copy_full_path",
                -- Custom keybindings for toggling hidden files
                -- in the explorer picker window
                ["<a-.>"] = "toggle_hidden",
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
        grep = {
          hidden = true,
        },
        todo_comments = {
          hidden = true,
        },
      },
      win = {
        input = {
          -- Custom keybindings for toggling hidden files
          -- for rest of the picker windows
          keys = {
            ["<a-.>"] = { "toggle_hidden", mode = "n" },
          },
        },
      },
    },
  },
}
