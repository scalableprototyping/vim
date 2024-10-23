if not vim.g.vscode then
  -- UI
  require("plug_config.nvim-tree")
  require("plug_config.gitsigns-nvim")
  require("plug_config.whick-key-nvim")
  -- Navigation
  require("plug_config.telescope")
  require("plug_config.harpoon")
  -- LSP
  require("plug_config.lspsaga-nvim")
  require("plug_config.nvim-lspconfig")
  require("plug_config.nvim-cmp")
  require("plug_config.mason")
else
  require("plug_config.yanky-nvim")
end
