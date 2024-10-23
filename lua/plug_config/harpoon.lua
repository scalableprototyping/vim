local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>ea", function() harpoon:list():add() end)

vim.keymap.set("n", "<leader>e1", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>e2", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>e3", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>e4", function() harpoon:list():select(4) end)

vim.keymap.set("n", "<leader>eu", function() harpoon:list():prev() end)
vim.keymap.set("n", "<leader>ed", function() harpoon:list():next() end)

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

vim.keymap.set("n", "<leader>ej", function() toggle_telescope(harpoon:list()) end,
    { desc = "Open harpoon window" })
