-- return {}
local phpcsfixerpath = "--config=/home/wladimir/.config/nvim/.php-cs-fixer.dist.php"
return {
  {
    "nvim-treesitter/nvim-treesitter",
    optional = true,
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "php", "phpdoc" })
      end
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "phpactor" })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "php" })
    end,
  },
  -- {
  --   "jay-babu/mason-null-ls.nvim",
  --   optional = true,
  --   opts = function(_, opts)
  --     opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "php-cs-fixer" })
  --   end,
  -- },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "phpactor",
        "php-debug-adapter",
        -- "php-cs-fixer"
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    -- optional = true,
    opts = {
      formatters_by_ft = {
        php = { "iiko_php_cs_fixer" },
      },
      formatters = {
        iiko_php_cs_fixer = {
          meta = {
            url = "https://github.com/PHP-CS-Fixer/PHP-CS-Fixer",
            description = "The PHP Coding Standards Fixer.",
          },
          command = "/home/wladimir/Documents/project/PHP-CS-Fixer/php-cs-fixer",
          args = { phpcsfixerpath, "fix", "$FILENAME" },
          stdin = false,
        },
      },
    },
  },
}
