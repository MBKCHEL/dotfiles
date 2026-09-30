return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        keys = {
            { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" },
        },
        opts = {
            close_if_last_window = true,
            window = {
                width = 30,
                mappings = {
                    ["l"] = "open",
                    ["o"] = "open",
                },
            },
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                },
                follow_current_file = {
                    enabled = true,
                },
                hijack_netrw_behavior = "open_default",
                use_libuv_file_watcher = true,
            },
        },
    },
}
