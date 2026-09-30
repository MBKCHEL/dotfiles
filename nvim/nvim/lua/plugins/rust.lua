return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
        if type(opts.ensure_installed) == "table" then
            vim.list_extend(opts.ensure_installed, { "rust", "toml", "ron" })
            end
            end,
    },

    {
        "Saecki/crates.nvim",
        event = { "BufRead Cargo.toml" },
        opts = {
            completion = {
                cmp = { enabled = true },
            },
        },
    },
}
