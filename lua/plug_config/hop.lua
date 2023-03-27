require('functions')

local hop = prequire("hop")
if (not hop) then
  return
end

local directions = require('hop.hint').HintDirection

hop.setup{}

-- Set keymap silent

vim.keymap.set('', '?', function()
  hop.hint_patterns({ direction = directions.BEFORE_CURSOR })
end, {remap=true})

vim.keymap.set('', '/', function()
  hop.hint_patterns({ direction = directions.AFTER_CURSOR })
end, {remap=true})

vim.keymap.set('', 'f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, {remap=true})

vim.keymap.set('', 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, {remap=true})

vim.keymap.set('', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, {remap=true})

vim.keymap.set('', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, {remap=true})