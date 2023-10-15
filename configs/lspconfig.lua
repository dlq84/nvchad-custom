local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- require("lsp-format").setup {}
-- require("lspconfig").tsserver.setup { on_attach = require("lsp-format").on_attach }
-- require("lspconfig").html.setup { on_attach = require("lsp-format").on_attach }


-- 
-- lspconfig.pyright.setup { blabla}
