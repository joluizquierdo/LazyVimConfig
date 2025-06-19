return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      yamlls = {
        settings = {
          yaml = {
            schemas = {
              ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
              ["http://json.schemastore.org/github-action"] = "action.{yml,yaml}",
              ["https://raw.githubusercontent.com/ansible/ansible-lint/main/src/ansiblelint/schemas/ansible.json"] = "roles/tasks/*.{yml,yaml}",
              ["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
              ["http://json.schemastore.org/kustomization"] = "kustomization.{yml,yaml}",
              ["https://raw.githubusercontent.com/ansible/ansible-lint/main/src/ansiblelint/schemas/ansible.json#/$defs/playbook"] = "*play*.{yml,yaml}",
              ["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
              ["http://json.schemastore.org/dependabot-2.0.json"] = ".github/dependabot.{yml,yaml}",
              ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "*docker-compose*.{yml,yaml}",
              ["https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json"] = "*flow*.{yml,yaml}",
            },
          },
        },
      },

      -- Disable yamlls for helm files
      servers = {
        helm_ls = {},
      },

      setup = {
        yamlls = function()
          LazyVim.lsp.on_attach(function(client, buffer)
            if vim.bo[buffer].filetype == "helm" then
              vim.schedule(function()
                vim.cmd("LspStop ++force yamlls")
              end)
            end
          end, "yamlls")
        end,
      },
    },
  },
}
