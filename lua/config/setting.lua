--Вкусовщина
vim.cmd "set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:•"
vim.cmd "set list"
vim.cmd [[ set colorcolumn=120 ]]
vim.cmd "set tabstop=2"
vim.cmd "set shiftwidth=2"
vim.opt.clipboard = ""
-- vim.opt.clipboard = ""
-- vim.opt.clipboard = "unnamed"

-- vim.g.clipboard = "unnamed"
-- vim.cmd("set smarttab")
-- vim.cmd("set expandtab")
-- vim.cmd "set smartindent"
-- vim.keymap.set('n','y','"+y')
-- vim.keymap.set('n','yy','"+yy')
-- vim.keymap.set('n','Y','"+Y')
-- vim.keymap.set('x','y','"+y')
-- vim.keymap.set('x','Y','"+Y')
--
local dap = require "dap"
local path = require("mason-registry").get_package("php-debug-adapter"):get_install_path()
dap.adapters.php = {
  type = "executable",
  command = "node",
  args = { path .. "/extension/out/phpDebug.js" },
}
dap.configurations.php = {
  {
    type = "php",
    request = "launch",
    name = "Listen for Xdebug",
    port = 9003,
    pathMappings = {
      ["/var/www/html/www/php"] = "/home/wladimir/Documents/projects/iiko/iikoWeb/server",
      -- ["/app"] = "/home/wladimir/Documents/project/my/photoreport/server_symfony",
    },
  },
}

-- require("conform").setup {
--   log_level = vim.log.levels.DEBUG,
-- }
--
-- function dump(o)
--   if type(o) == "table" then
--     local s = "{ "
--     for k, v in pairs(o) do
--       if type(k) ~= "number" then k = '"' .. k .. '"' end
--       s = s .. "[" .. k .. "] = " .. dump(v) .. ","
--     end
--     return s .. "} "
--   else
--     return tostring(o)
--   end
-- end
--
-- local null_ls = require "null-ls"
-- local phpcsfixerpath = "--config=/home/wladimir/.config/nvim/.php-cs-fixer.dist.php"
-- --
-- local sources = {
--   null_ls.builtins.formatting.phpcsfixer.with {
--     args = { "--no-interaction", "--quiet", phpcsfixerpath, "fix", "$FILENAME" },
--     extra_args = function(params)
--       dump(params)
--       return params.options
--     end,
--   },
-- }
-- --
-- null_ls.setup { sources = sources }
-- -- print(dump(b.formatting.phpcsfixer))
-- print(dump(sources))
