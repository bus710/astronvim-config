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
  { "tpope/vim-fugitive", cmd = "Git" },
  { "nvim-lua/plenary.nvim" },
  { "mfussenegger/nvim-dap" },
  --
  { "othree/html5.vim" },
  { "pangloss/vim-javascript" },
  { "evanleck/vim-svelte", branch = "main" },
  --
  { "simrat39/rust-tools.nvim" },
  --
  { "vim-erlang/vim-erlang-runtime" },
  { "vim-erlang/vim-erlang-compiler" },
  { "vim-erlang/vim-erlang-omnicomplete" },
  { "vim-erlang/vim-erlang-tags" },
  { "elixir-editors/vim-elixir" },
  {
    "elixir-tools/elixir-tools.nvim",
    version = "*",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local elixir = require "elixir"
      local elixirls = require "elixir.elixirls"

      elixir.setup {
        nextls = { enable = false },
        credo = { enable = true },
        elixirls = {
          enable = true,
          -- https://github.com/elixir-tools/elixir-tools.nvim/issues/143
          -- ls ~/.cache/nvim/elixir-tools.nvim/installs/elixir-lsp/elixir-ls/
          tag = "v0.15.1",
          settings = elixirls.settings {
            dialyzerEnabled = false,
            enableTestLenses = false,
          },
          on_attach = function(client, bufnr)
            -- require("astronvim.lsp.util").on_attach(client, bufnr)
            vim.keymap.set("n", "gd", vim.lsp.buf.definition)
            vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
            vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
            vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
          end,
        },
      }
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
