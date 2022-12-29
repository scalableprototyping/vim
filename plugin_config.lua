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

-- TODO: recent files with https://github.com/nvim-telescope/telescope-frecency.nvim
local telescope = prequire('telescope.builtin')
if (telescope) then
--   vim.keymap.set('n', '<leader>ep', telescope.find_files, {})
--   vim.keymap.set('n', '<leader>sf', telescope.live_grep, {})
  vim.keymap.set('n', '<leader>sb', telescope.buffers, {})
--   vim.keymap.set('n', '<leader><leader>eh', telescope.help_tags, {})
-- https://www.reddit.com/r/neovim/comments/qspemc/close_buffers_with_telescope/
end
