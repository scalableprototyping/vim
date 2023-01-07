require('functions')

local mason = prequire("mason")
if (not mason) then
  return
end

mason.setup()

local mason_lspconfig = prequire("mason-lspconfig")
if (mason_lspconfig) then
  mason_lspconfig.setup()
end

-- Autocompletion
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function()
  setup_lsp_keymaps()
end

require("lspconfig")["angularls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require("lspconfig")["tsserver"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
