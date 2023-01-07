require("functions")

local yanky = prequire("yanky")
if (yanky) then

  yanky.setup({
    ring = {
      history_length = 100,
      storage = "shada",
      sync_with_numbered_registers = true,
      cancel_event = "update",
    },
    picker = {
      select = {
        action = nil, -- nil to use default put action
      },
      telescope = {
        mappings = nil, -- nil to use default mappings
      },
    },
    system_clipboard = {
      sync_with_ring = true,
    },
    highlight = {
      on_put = true,
      on_yank = true,
      timer = 150,
    },
    preserve_cursor_position = {
      enabled = true,
    },
  })

  vim.keymap.set({"n","x"}, "p", "<Plug>(YankyPutAfter)")
  vim.keymap.set({"n","x"}, "P", "<Plug>(YankyPutBefore)")
  vim.keymap.set({"n","x"}, "gp", "<Plug>(YankyGPutAfter)")
  vim.keymap.set({"n","x"}, "gP", "<Plug>(YankyGPutBefore)")

  vim.keymap.set("n", "<c-p>", "<Plug>(YankyCycleForward)")
  vim.keymap.set("n", "<c-n>", "<Plug>(YankyCycleBackward)")

  local telescope = prequire("telescope")
  if (telescope) then
      telescope.load_extension("yank_history")
      vim.keymap.set("n", "<leader>p", "<cmd>Telescope yank_history<cr>")
  end

end
