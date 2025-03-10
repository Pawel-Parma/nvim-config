-- TODO: config lsp list
-- https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#available-lsp-servers
return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local lspconfig = require("lspconfig")

        mason.setup({})

        mason_lspconfig.setup({
            ensure_installed = {
                "bashls",
                "clangd", "cmake",
                "dockerls",
                "gopls",
                "jsonls",
                'lua_ls',
                "markdown_oxide",
                --          "basedpyright",
                "rust_analyzer",
                "taplo",
                "yamlls",
                "zls",

                --                "typos_lsp",
            },
            handlers = {
                function(lsp)
                    lspconfig[lsp].setup({})
                end,
            }
        })



        lspconfig["lua_ls"].setup {
            on_init = function(client)
                if client.workspace_folders then
                    local path = client.workspace_folders[1].name
                    if vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc') then
                        return
                    end
                end

                client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                    runtime = {
                        version = 'LuaJIT'
                    },
                    workspace = {
                        checkThirdParty = false,
                        library = {
                            vim.env.VIMRUNTIME
                        }
                    }
                })
            end,
            settings = {
                Lua = {}
            }
        }
    end
}
