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
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    -- opts = {
    --   mappings = {
    --     n = {
    --       -- this mapping will only be set in buffers with an LSP attached
    --       K = {
    --         function() vim.lsp.buf.hover() end,
    --         desc = "Hover symbol details",
    --       },
    --       -- condition for only server with declaration capabilities
    --       gD = {
    --         function() vim.lsp.buf.declaration() end,
    --         desc = "Declaration of current symbol",
    --         cond = "textDocument/declaration",
    --       },
    --     },
    --   },
    -- },
  },
}
