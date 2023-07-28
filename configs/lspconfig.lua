local lspconfig = require("lspconfig")

local lc = require("plugins.configs.lspconfig")

local on_attach = lc.on_attach
local capabilities = lc.capabilities

local servers = require("custom.languages.lsp")

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    ['rust_analyzer'] = {
      cargo = {
        allFeatures = true,
      }
    }
  }
}

