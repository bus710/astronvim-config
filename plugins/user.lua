return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  --
  --
  -- Git
  { "tpope/vim-fugitive",
    cmd = "Git",
    lazy = false,
  },
  { 'rbong/vim-flog',
    cmd = "Flog"
    -- Run :Floggit first and then run :Flog to see the graph
  },
  -- 
  { "nvim-lua/plenary.nvim" }, -- Lua function helpers
  { "mfussenegger/nvim-dap" }, -- Debug adapter protocol
  --
  { "othree/html5.vim" },
  { "pangloss/vim-javascript" },
  { "evanleck/vim-svelte", branch = "main" },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  --
  { "simrat39/rust-tools.nvim" },
  --
  { "vim-erlang/vim-erlang-runtime" },
  { "vim-erlang/vim-erlang-compiler" },
  { "vim-erlang/vim-erlang-omnicomplete" },
  { "vim-erlang/vim-erlang-tags" },
  { "elixir-editors/vim-elixir" },
}
