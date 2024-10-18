-- return {}
local phpcsfixerpath = "--config=~/.config/nvim/.php-cs-fixer.dist.php"
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
      opts.handlers = require("astrocore").list_insert_unique(opts.handlers, {
        function(config)
          -- all sources with no handler get passed here

          -- Keep original functionality
          require("mason-nvim-dap").default_setup(config)
        end,
        php = function(config)
          -- config.adapters = {
          --  type = "executable",
          --  command = "/usr/bin/python3",
          --  args = {
          --   "-m",
          --   "debugpy.adapter",
          --  },
          -- }
          config.configurations = {
            type = "php",
            request = "launch",
            name = "Listen for Xdebug",
            port = 9003,
            pathMappings = {
              ["/var/www/html/www/php"] = "/home/wladimir/Documents/projects/iiko/iikoWeb/server",
              -- ["/app"] = "/home/wladimir/Documents/project/my/photoreport/server_symfony",
            },
          }
          require("mason-nvim-dap").default_setup(config) -- don't forget this!
        end,
      })
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "php-cs-fixer" })
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(
        opts.ensure_installed,
        { "phpactor", "php-debug-adapter", "php-cs-fixer" }
      )
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
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
