return {
  'jose-elias-alvarez/null-ls.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local null_ls = require("null-ls")
    local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
    local event = "BufWritePre" -- or "BufWritePost"
    local async = event == "BufWritePost"

    null_ls.setup({
      sources = {
        null_ls.builtins.diagnostics.cspell.with({
          method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
          diagnostic_config = {
            signs = false,
            underline = true,
          },
        }),
        null_ls.builtins.code_actions.cspell,
        null_ls.builtins.formatting.prettierd
      },
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          -- format on save
          vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
          vim.api.nvim_create_autocmd(event, {
            buffer = bufnr,
            group = group,
            callback = function()
              vim.lsp.buf.format({ 
                bufnr = bufnr,
                async = async,
                filter = function(client) return client.name ~= "tsserver" end
              })
            end,
            desc = "[lsp] format on save",
          })
        end
      end
    })
  end
}
