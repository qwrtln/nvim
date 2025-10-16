return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      -- Conform will run multiple formatters sequentially
      python = { "isort", "ruff_format" },
      terraform = { "terraform_fmt" },
    },
    format_after_save = function(bufnr)
      -- To prevent cursor jumping with smear-cursor.nvim
      -- https://github.com/sphamba/smear-cursor.nvim/issues/78#issuecomment-2585744218
      if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
        return
      end
      return { timeout_ms = 1000, lsp_fallback = true, async = true }
    end,
  },
}
