require("functions")

local lsp_config = prequire('lspconfig')
if (not lsp_config) then
  return
end

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
function setup_lsp_keymaps()
  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', '<leader>jd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', '<leader>ji', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<leader>jD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', '<leader>jr', vim.lsp.buf.references, bufopts)

  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)

  vim.keymap.set('n', '<space>lwa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>lwr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>lwl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
  vim.keymap.set('n', '<space>lr', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>la', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)

  vim.keymap.set('n', '<space>ldo', vim.diagnostic.open_float, opts)
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
  vim.keymap.set('n', '<space>ldl', vim.diagnostic.setloclist, opts)
end

local on_attach_csharp_ls = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  setup_lsp_keymaps()
end

-- Autocompletion
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lsp_config.csharp_ls.setup {
  cmd = { "csharp-ls" },
  filetypes = { "cs" },
  on_attach = on_attach_csharp_ls,
  init_options = {
    AutomaticWorkspaceInit = true
  },
  handlers = {
    ["textDocument/definition"] = require('csharpls_extended').handler,
  },
  capabilities = capabilities
}

local on_attach_tsserver_ls = function(client, bufnr)
  setup_lsp_keymaps()
end

lsp_config.tsserver.setup{
  filetypes = { "ts" },
  on_attach = on_attach_tsserver_ls,
  capabilities = capabilities
}
