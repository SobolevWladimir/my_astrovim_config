-- local directions = require('hop.hint').HintDirection
return {
  "smoka7/hop.nvim",
  opts = {},
  dependencies = {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["s"] = { function() require("hop").hint_char1() end, desc = "Hop hint words" },
          -- ["<S-s>"] = { function() require("hop").hint_lines() end, desc = "Hop hint lines" },
          ["<S-s>"] = { function() require("hop").hint_char1{multi_windows=true} end, desc = "Hop hint lines" },
        },
        v = {
          ["s"] = { function() require("hop").hint_words { extend_visual = true } end, desc = "Hop hint words" },
          ["<S-s>"] = {
            function() require("hop").hint_lines { extend_visual = true } end,
            desc = "Hop hint lines",
          },
          ["t"] = { function() require("hop").hint_char1({ direction = require('hop.hint').HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 }) end, desc = "Hop hint words" },
          ["T"] = { function() require("hop").hint_char1({ direction = require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 }) end, desc = "Hop hint words" },
          ["f"] = { function() require("hop").hint_char1({ direction = require('hop.hint').HintDirection.AFTER_CURSOR, current_line_only = true}) end, desc = "Hop hint words" },
          ["F"] = { function() require("hop").hint_char1({ direction = require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = true}) end, desc = "Hop hint words" },
        },
        l = {
          ["s"] = { function() require("hop").hint_words { extend_visual = true } end, desc = "Hop hint words" },
          ["<S-s>"] = {
            function() require("hop").hint_lines { extend_visual = true } end,
            desc = "Hop hint lines",
          },
          ["t"] = { function() require("hop").hint_char1({ direction = require('hop.hint').HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 }) end, desc = "Hop hint words" },
          ["T"] = { function() require("hop").hint_char1({ direction = require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 }) end, desc = "Hop hint words" },
          ["f"] = { function() require("hop").hint_char1({ direction = require('hop.hint').HintDirection.AFTER_CURSOR, current_line_only = true}) end, desc = "Hop hint words" },
          ["F"] = { function() require("hop").hint_char1({ direction = require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = true}) end, desc = "Hop hint words" },
        },
        o = {
          ["s"] = { function() require("hop").hint_words { extend_visual = true } end, desc = "Hop hint words" },
          ["<S-s>"] = {
            function() require("hop").hint_lines { extend_visual = true } end,
            desc = "Hop hint lines",
          },
          ["t"] = { function() require("hop").hint_char1({ direction = require('hop.hint').HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 }) end, desc = "Hop hint words" },
          ["T"] = { function() require("hop").hint_char1({ direction = require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 }) end, desc = "Hop hint words" },
          ["f"] = { function() require("hop").hint_char1({ direction = require('hop.hint').HintDirection.AFTER_CURSOR, current_line_only = true}) end, desc = "Hop hint words" },
          ["F"] = { function() require("hop").hint_char1({ direction = require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = true}) end, desc = "Hop hint words" },
        },
      },
    },
  },
  specs = {
    {
      "catppuccin",
      optional = true,
      ---@type CatppuccinOptions
      opts = { integrations = { hop = true } },
    },
  },
}
