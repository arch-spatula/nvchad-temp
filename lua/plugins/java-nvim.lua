return {
  'nvim-java/nvim-java',
  lazy = false,
  config = false,
  dependencies = {
    {
      -- 'neovim/nvim-lspconfig',
      'neovim/nvim-lspconfig',
      opts = {
        servers = {
          jdtls = {
            -- Your custom jdtls settings goes here
          },
        },
        setup = {
          jdtls = function()
            require('java').setup({
              -- Your custom nvim-java configuration goes here
            })
          end,
        },
      },
    },
  },
}
