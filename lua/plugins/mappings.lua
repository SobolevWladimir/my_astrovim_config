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

          ["<Leader>a"] = { desc = "AI  инструменты" },
          ["<Leader>w"] = { desc = "Окно" },
          ["<Leader>wv"] = { 
            "<cmd>vsplit<CR>",
            desc = "Разделить окно по вертикали"
          },
          ["<Leader>wh"] = { 
            "<cmd>split<CR>",
            desc = "Разделить окно по горизонтале"
          },
          -- tables with just a `desc` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<Leader>b"] = { desc = "Буфер" },
          ["<Leader>bh"] = {
            function() require("bufferline.commands").close_in_direction "left" end,
            desc = "Закрыть вкладки с права",
          },
          ["<Leader>bl"] = {
            function() require("bufferline.commands").close_in_direction "right" end,
            desc = "Закрыть вкладки с лева",
          },
          ["<Leader>s"] = { desc = "Поиск и замена" },
          ["<Leader>st"] = { function() require("telescope.builtin").live_grep() end, desc = "Find words" },
          ["<Leader>sr"] = {
            "<cmd>lua require('telescope').extensions.recent_files.pick()<CR>",
            desc = "Открыть последние используемые",
          },

          ["<Leader>lf"] = { function() require("conform").format {} end, desc = "format comfort" },
          ["<Leader>lw"] = {
            function() require("telescope.builtin").diagnostics { bufnr = 0 } end,
            desc = "diagnostic file",
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
