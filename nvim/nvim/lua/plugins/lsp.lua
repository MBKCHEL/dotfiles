return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        vim.diagnostic.config({
            virtual_text = true,
            signs = true,
            underline = true,
            update_in_insert = true,
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
            },
        })

        vim.lsp.config("rust_analyzer", {
            cmd = { "rust-analyzer" },
            capabilities = capabilities,
            settings = {
                ["rust-analyzer"] = {
                    checkOnSave = true,
                    check = {
                        command = "clippy",
                    },
                },
            },
        })

        vim.lsp.enable("rust_analyzer")

        vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Показать документацию" })
        vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Показать текст ошибки" })
        end,
    },
}
