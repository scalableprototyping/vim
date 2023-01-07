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
          { key = "<C-s>", action = "split" },
        },
      },
    },
  })
end

