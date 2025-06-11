-- return {
--   "williamboman/mason.nvim",
--   opts = {
--     ui = {
--       -- icons = {
--       --   package_installed = "✓",
--       --   package_pending = "➜",
--       --   package_uninstalled = "✗",
--       -- },
--     },
--   },
--
--   -- use OPTS property to pass the configuration
--   -- lazy vim call the setup function for you
--
--   -- config = function()
--   -- 	require('mason').setup({})
--   -- end
--   -- ^^^^^^^^^^^^^^^^ DON'T DO THIS
-- }

return {
  { "mason-org/mason.nvim", version = "^1.0.0" },
  { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
}
