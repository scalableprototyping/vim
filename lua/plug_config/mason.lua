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

local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require("lspconfig")["sumneko_lua"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = "LuaJIT",
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { "vim" },
      },
      -- workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      -- },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  }
})
