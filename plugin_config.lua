require("functions")

local nvim_tree = prequire("nvim-tree")
if (nvim_tree) then
  -- disable netrw
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1

  nvim_tree.setup({
    sort_by = "case_sensitive",
    view = {
      adaptive_size = true,
      mappings = {
        list = {
          { key = "U", action = "dir_up" },
          { key = "C", action = "cd" },
          { key = "x", action = "close_node" },
        },
      },
    },
  })
end

local builtin = prequire('telescope.builtin')
if (builtin) then
  vim.keymap.set('n', '<leader>xxx', builtin.find_files, {})
  -- vim.keymap.set('n', '<leader>x', builtin.live_grep, {})
  -- vim.keymap.set('n', '<leader>xfb', builtin.buffers, {})
  -- vim.keymap.set('n', '<leader>xfh', builtin.help_tags, {})
end
