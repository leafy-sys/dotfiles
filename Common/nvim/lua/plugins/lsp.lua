return {
  -- 1. The "App Store" (Mason)
  -- We just want to make sure it's on the path, so we set lazy = true
  {
    "williamboman/mason.nvim",
    lazy = true,
  },

  -- 2. The "Engine" (LSPConfig)
  -- We also just want this on the path
  {
    "neovim/nvim-lspconfig",
    lazy = true,
  },

  -- 3. The "Glue" (This plugin connects the other two)
  -- This is our main plugin, where all the logic lives.
  {
    "williamboman/mason-lspconfig.nvim",

    -- We list the dependencies to ensure load order
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },

    -- This config function will run *after* its dependencies are loaded
    config = function()
      -- Setup Mason (the "app store")
      require("mason").setup()

      -- Setup Mason-LSPConfig (the "glue")
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" },

      handlers = {
        function(server_name)
            require("lspconfig")[server_name].setup({
                })
            end,
        },
    })
    end,
  },
}
