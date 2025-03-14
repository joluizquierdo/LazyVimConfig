local models = {
  {
    name = "gemini2.0-flash",
    model = "google/gemini-2.0-flash-001",
    disable_tools = false,
  },
  {
    name = "gpt-4o-mini",
    model = "openai/gpt-4o-mini",
    disable_tools = false,
  },
  {
    name = "gemini-2.0-pro-exp-free",
    model = "google/gemini-2.0-pro-exp-02-05:free",
    disable_tools = false,
  },
  {
    name = "deepseek-r1-zero-free",
    model = "deepseek/deepseek-r1-zero:free",
    disable_tools = true,
  },
  {
    name = "claude-3.7-sonnet-thinking-3dollars",
    model = "anthropic/claude-3.7-sonnet:thinking",
    disable_tools = true,
  },
}

local vendors = {}

for _, model in ipairs(models) do
  vendors[model.name] = {
    __inherited_from = "openai",
    endpoint = "https://openrouter.ai/api/v1",
    model = model.model,
    api_key_name = "OPENROUTER_API_KEY",
    disable_tools = model.disable_tools,
    -- temperature = 0,
  }
end

return {

  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false, -- Set this to "*" to always pull the latest release version, or set it to false to update to the latest code changes.
    opts = {
      -- add any opts here
      -- for example
      provider = "gemini2.0-flash",
      -- Query more openrouter models with tools capability
      -- https://openrouter.ai/models?fmt=table&supported_parameters=tools
      vendors = vendors,
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "echasnovski/mini.pick", -- for file_selector provider mini.pick
      "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
      "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
      "ibhagwan/fzf-lua", -- for file_selector provider fzf
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua", -- for providers='copilot'
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
}
