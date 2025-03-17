return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  -- rust
  {
    "mrcjkb/rustaceanvim",
    version = "^5",
    lazy = false,
    config = function()
      vim.g.rustaceanvim = {
        server = {
          on_attach = function(_, bufnr)
            -- rust
            vim.lsp.inlay_hint.enable(true, { bufnr })
          end,
          default_settings = {
            -- rust-analyzer language server configuration
            ["rust-analyzer"] = {
              cargo = {
                features = "all",
              },
              checkOnSave = {
                command = "clippy",
              },
            },
          },
        },
      }
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "denols",
          "solidity_ls",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      -- typescript
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
        single_file_support = false,
        root_dir = lspconfig.util.root_pattern("package.json"),
      })
      ---- deno
      lspconfig.denols.setup({
        root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
      })

      -- solidity
      lspconfig.solidity_ls.setup({
        capabilities = capabilities,
        filetypes = { "solidity" },
        root_dir = lspconfig.util.root_pattern("hardhat.config.*", "foundry.toml", ".git"),
        settings = {
          solidity = {
            includePath = "",
            remappings = {
              -- ["@openzeppelin/"] = "lib/openzeppelin-contracts/",
              -- ["account-abstraction/"] = "lib/account-abstraction/",
            },
          },
        },
      })
      -- bash
      lspconfig.bashls.setup({})
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
      vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", function()
        if vim.bo.filetype == "rust" then
          vim.cmd.RustLsp("codeAction")
        else
          vim.lsp.buf.code_action()
        end
      end, { silent = true })
    end,
  },
}
