require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",

  -- python (works with uv-managed .venv envs out of the box)
  "pyright", -- types, intellisense, go-to-def
  "ruff", -- linting, import sorting, formatting

  -- docker
  "dockerls", -- Dockerfile
  "docker_compose_language_service", -- docker-compose.yml

  -- config formats used across backend/infra repos
  "yamlls", -- yaml (k8s manifests, compose, CI)
  "jsonls", -- json
  "taplo", -- toml (pyproject.toml, uv.toml, ...)
  "bashls", -- shell scripts
}
vim.lsp.enable(servers)

-- ruff's hover duplicates pyright's; let pyright own it
vim.lsp.config("ruff", {
  on_attach = function(client, _)
    client.server_capabilities.hoverProvider = false
  end,
})

-- read :h vim.lsp.config for changing options of lsp servers
