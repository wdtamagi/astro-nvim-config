return {
  {
    "smoka7/hop.nvim",
    name = "hop.nvim",

    opts = function()

      local hop = require('hop')
      local directions = require('hop.hint').HintDirection

      return {
        keys = "tenosufkhmdcarli",
        mapping = {
          n = {
            s = {
              function()
                hop.hint_char2({ silent = true })
              end,
            },
            S = {
              function()
                hop.hint_words({ silent = true })
              end,
            },
            l = {
              function()
                hop.hint_lines({ silent = true })
              end,
            },
            f = {
              function()
                hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
              end,
            },
            F = {
              function()
                hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
              end,
            },
            t = {
              function()
                hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
              end,
            },
            T = {
              function()
                hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = -1 })
              end,
            },
          },
        },
      }
    end,
  },
}
