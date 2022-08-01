-- general
lvim.log.level = "warn"
lvim.format_on_save = true

-- line number
vim.opt.relativenumber = true
vim.opt.timeoutlen = 100

-- folding method
vim.opt.foldmethod = "expr"
vim.opt.foldenable = false
vim.opt.foldlevel = 99
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

vim.cmd([[
  augroup remember_folds
    autocmd!
    autocmd BufWinLeave silent! mkview
    autocmd BufWinEnter silent! loadview
  augroup END
]])

function hi()
  function hi2()
    function hi3()
    end
  end
end

-- default unfolds all codes
-- vim.api.nvim_create_augroup("OpenFolds", { clear = true })
-- vim.api.nvim_create_autocmd(
--   "BufReadPost",
--   {
--     group = "OpenFolds",
--     pattern = "*",
--     command = "normal zR"
--   }
-- )
-- vim.api.nvim_create_autocmd(
--   "FileReadPost",
--   {
--     group = "OpenFolds",
--     pattern = "*",
--     command = "normal zR"
--   }
-- )
