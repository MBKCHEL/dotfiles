return {
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = function()
        require("toggleterm").setup({
            size = 15,
            open_mapping = [[<C-t>]],
            hide_numbers = true,
            shade_terminals = true,
            start_in_insert = true,
            direction = "float",
            float_opts = {
                border = "curved",
            },
        })

        local opts = { noremap = true, silent = true }
        vim.keymap.set({ "n", "t" }, "<C-/>", "<cmd>ToggleTerm<CR>", opts)
        vim.keymap.set({ "n", "t" }, "<C-_>", "<cmd>ToggleTerm<CR>", opts)

        function _G.set_terminal_keymaps()
        local t_opts = { buffer = 0 }
        vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], t_opts)
        end

        vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
        end,
    },
}
