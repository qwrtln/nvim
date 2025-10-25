return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  branch = "main",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    local map = vim.keymap.set

    -- Setup configuration
    require("nvim-treesitter-textobjects").setup {
      select = {
        lookahead = true,
        include_surrounding_whitespace = false,
      },
      move = {
        set_jumps = true,
      },
    }

    ------------------------
    -- SELECTION MAPPINGS --
    ------------------------
    local select = require("nvim-treesitter-textobjects.select").select_textobject

    -- Functions
    map({ "x", "o" }, "af", function()
      select("@function.outer", "textobjects")
    end, { desc = "Select around function" })
    map({ "x", "o" }, "if", function()
      select("@function.inner", "textobjects")
    end, { desc = "Select inside function" })

    -- Classes
    map({ "x", "o" }, "ac", function()
      select("@class.outer", "textobjects")
    end, { desc = "Select around class" })
    map({ "x", "o" }, "ic", function()
      select("@class.inner", "textobjects")
    end, { desc = "Select inside class" })

    -- Parameters
    map({ "x", "o" }, "aa", function()
      select("@parameter.outer", "textobjects")
    end, { desc = "Select around parameter" })
    map({ "x", "o" }, "ia", function()
      select("@parameter.inner", "textobjects")
    end, { desc = "Select inside parameter" })

    -- Blocks
    map({ "x", "o" }, "ab", function()
      select("@block.outer", "textobjects")
    end, { desc = "Select around block" })
    map({ "x", "o" }, "ib", function()
      select("@block.inner", "textobjects")
    end, { desc = "Select inside block" })

    -- Conditionals
    map({ "x", "o" }, "ai", function()
      select("@conditional.outer", "textobjects")
    end, { desc = "Select around conditional" })
    map({ "x", "o" }, "ii", function()
      select("@conditional.inner", "textobjects")
    end, { desc = "Select inside conditional" })

    -- Loops
    map({ "x", "o" }, "al", function()
      select("@loop.outer", "textobjects")
    end, { desc = "Select around loop" })
    map({ "x", "o" }, "il", function()
      select("@loop.inner", "textobjects")
    end, { desc = "Select inside loop" })

    -----------------------
    -- MOVEMENT MAPPINGS --
    -----------------------
    local move = require("nvim-treesitter-textobjects.move")

    -- Jump to next/previous function
    map({ "n", "x", "o" }, "]f", function()
      move.goto_next_start("@function.outer", "textobjects")
    end, { desc = "Next function start" })
    map({ "n", "x", "o" }, "]F", function()
      move.goto_next_end("@function.outer", "textobjects")
    end, { desc = "Next function end" })
    map({ "n", "x", "o" }, "[f", function()
      move.goto_previous_start("@function.outer", "textobjects")
    end, { desc = "Previous function start" })
    map({ "n", "x", "o" }, "[F", function()
      move.goto_previous_end("@function.outer", "textobjects")
    end, { desc = "Previous function end" })

    -- Jump to next/previous class
    map({ "n", "x", "o" }, "]c", function()
      move.goto_next_start("@class.outer", "textobjects")
    end, { desc = "Next class start" })
    map({ "n", "x", "o" }, "]C", function()
      move.goto_next_end("@class.outer", "textobjects")
    end, { desc = "Next class end" })
    map({ "n", "x", "o" }, "[c", function()
      move.goto_previous_start("@class.outer", "textobjects")
    end, { desc = "Previous class start" })
    map({ "n", "x", "o" }, "[C", function()
      move.goto_previous_end("@class.outer", "textobjects")
    end, { desc = "Previous class end" })

    -- Jump to next/previous parameter
    map({ "n", "x", "o" }, "]a", function()
      move.goto_next_start("@parameter.inner", "textobjects")
    end, { desc = "Next parameter" })
    map({ "n", "x", "o" }, "[a", function()
      move.goto_previous_start("@parameter.inner", "textobjects")
    end, { desc = "Previous parameter" })

    -------------------
    -- SWAP MAPPINGS --
    -------------------
    local swap = require("nvim-treesitter-textobjects.swap")

    -- Swap node under cursor
    vim.keymap.set("n", "<leader>a", function()
      swap.swap_next("@parameter.inner")
    end)
    vim.keymap.set("n", "<leader>s", function()
      swap.swap_previous("@parameter.outer")
    end)

    -------------------------------
    -- MAKE MOVEMENTS REPEATABLE --
    -------------------------------
    local repeatable_move = require("nvim-treesitter-textobjects.repeatable_move")

    -- Repeat movement with ; and ,
    -- Ensure ; goes forward and , goes backward regardless of the last direction
    map({ "n", "x", "o" }, ";", repeatable_move.repeat_last_move_next)
    map({ "n", "x", "o" }, ",", repeatable_move.repeat_last_move_previous)

    -- Make builtin f, F, t, T also repeatable with ; and ,
    map({ "n", "x", "o" }, "f", repeatable_move.builtin_f_expr, { expr = true })
    map({ "n", "x", "o" }, "F", repeatable_move.builtin_F_expr, { expr = true })
    map({ "n", "x", "o" }, "t", repeatable_move.builtin_t_expr, { expr = true })
    map({ "n", "x", "o" }, "T", repeatable_move.builtin_T_expr, { expr = true })
  end,
}
