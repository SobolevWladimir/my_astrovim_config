return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          group = "Normal",
          ["<Leader>fh"] = { function() require("telescope.builtin").oldfiles() end, desc = "Find history" },
          ["<Leader>fo"] = {
            function()
              if vim.bo.filetype == "neo-tree" then
                vim.cmd.wincmd "p"
              else
                vim.cmd.Neotree "focus"
              end
            end,
            desc = "Найти файл в проводнике",
          },
          -- tables with just a `desc` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<Leader>b"] = { desc = "Буфер" },
          ["<Leader>s"] = { desc = "Поиск и замена" },
          ["<Leader>st"] = { function() require("telescope.builtin").live_grep() end, desc = "Find words" },
          ["<Leader>sr"] = {
            "<cmd>lua require('telescope').extensions.recent_files.pick()<CR>",
            desc = "Открыть последние используемые",
          },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
        },
        v = {
          ["Y"] = { '"+y' },
        },

        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },
  },
}
