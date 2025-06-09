-- load defaults i.e lua_lsp

require("nvchad.configs.lspconfig").defaults()

-- require("java").setup()
-- require("lspconfig").jdtls.setup {}
local servers = { "html", "cssls", "gopls", "gleam", "ts_ls", "vue_ls" }
vim.lsp.enable(servers)
-- read :h vim.lsp.config for changing options of lsp servers 

-- require("nvchad.configs.lspconfig").defaults()
--
-- local lspconfig = require "lspconfig"

-- lspconfig.jdtls.setup {}

-- EXAMPLE
-- local servers = { "html", "cssls", "gopls", "gleam" }
-- local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     on_attach = nvlsp.on_attach,
--     on_init = nvlsp.on_init,
--     capabilities = nvlsp.capabilities,
--   }
-- end

-- If you are using mason.nvim, you can get the ts_plugin_path like this
-- local mason_registry = require "mason-registry"
-- local vue_language_server_path = mason_registry.get_package("vue-language-server"):get_install_path()
--   .. "/node_modules/@vue/language-server"
--
-- lspconfig.ts_ls.setup {
--   init_options = {
--     plugins = {
--       {
--         name = "@vue/typescript-plugin",
--         location = vue_language_server_path,
--         languages = { "vue" },
--       },
--     },
--   },
--   filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
--
-- -- No need to set `hybridMode` to `true` as it's the default value
-- lspconfig.volar.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
