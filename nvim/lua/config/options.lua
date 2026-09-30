vim.opt.clipboard = "unnamedplus"

if vim.fn.has("wsl") == 0 and vim.fn.executable("wl-copy") == 1 then
    vim.g.clipboard = {
        name = "wl-clipboard",
        copy = {
            ["+"] = "wl-copy",
            ["*"] = "wl-copy",
        },
        paste = {
            ["+"] = "wl-paste",
            ["*"] = "wl-paste",
        },
        cache_enabled = 1,
    }
    end

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.cursorline = true

vim.opt.updatetime = 200
vim.opt.timeoutlen = 300

vim.opt.scrolloff = 8

vim.opt.termguicolors = true

vim.g.lazyvim_check_order = false

vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr>", { desc = "Save file" })

vim.keymap.set("n", "<C-q>", "<cmd>qa<cr>", { desc = "Quit all" })

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function(data)
    local is_directory = vim.fn.isdirectory(data.file) == 1
    if is_directory then
        require("neo-tree.command").execute({ action = "focus", dir = data.file })
        end
        end,
})
