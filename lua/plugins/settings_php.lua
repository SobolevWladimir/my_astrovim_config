-- return {}
local phpcsfixerpath = "--config=~/.config/nvim/.php-cs-fixer.dist.php"
return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        -- php = { "php_cs_fixer" },
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
