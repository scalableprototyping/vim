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

local telescope = prequire('telescope')
if (telescope) then
  require('telescope').setup{
    defaults = {
      -- Default configuration for telescope goes here:
      -- config_key = value,
      mappings = {
        i = {
          ["<C-s>"] = "select_horizontal"
        }
      }
    },
    pickers = {
      -- Default configuration for builtin pickers goes here:
      -- picker_name = {
      --   picker_config_key = value,
      --   ...
      -- }
      -- Now the picker_config_key will be applied every time you call this
      -- builtin picker
    },
    extensions = {
      -- Your extension configuration goes here:
      -- extension_name = {
      --   extension_config_key = value,
      -- }
      -- please take a look at the readme of the extension you want to configure
    }
  }
end
