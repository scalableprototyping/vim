require("functions")

local nvim_tree = prequire("nvim-tree")
if (not nvim_tree) then
  return
end

local function my_on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set('n', 'U', api.tree.change_root_to_parent, opts('Up'))
  vim.keymap.set('n', 'C', api.tree.change_root_to_node, opts('CD'))
  vim.keymap.set('n', 'x', api.node.navigate.parent_close, opts('Close Directory'))
  vim.keymap.set('n', '<C-v>', api.node.open.vertical, opts('Open: Vertical Split'))
  vim.keymap.set('n', '<C-s>', api.node.open.horizontal, opts('Open: Horizontal Split'))
end

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
nvim_tree.setup({
  sort_by = "case_sensitive",
  filters = {
    -- Hide Unity files
    custom = {
      ".meta$"
    }
  },
  view = {
    adaptive_size = true
  },
  on_attach = my_on_attach
})
