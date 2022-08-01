-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

-- kdd your own keymapping
-- lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.insert_mode["jk"] = "<ESC>"
lvim.keys.normal_mode["<C-p>"] = ":Telescope find_files<cr>"
lvim.keys.normal_mode["<C-b>"] = ":CHADopen<cr>"
lvim.keys.normal_mode["K"] = ":lua vim.lsp.buf.hover()<cr>"
lvim.keys.normal_mode["gh"] = "<cmd>lua require('lvim.lsp.peek').Peek('typeDefinition')<cr>"

-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
--
lvim.builtin.which_key.mappings["e"] = {
  name = "Error",
}

lvim.builtin.which_key.mappings["/"] = { ":Telescope live_grep<cr>", "Live grep" }

lvim.builtin.which_key.mappings["f"] = {
  name = "File",
  f = { ":Telescope find_files<cr>", "Open file/folder" },
  l = { ":Telescope filetypes<cr>", "Change file language" },
  n = { ":e ", "New File" },
  s = { ":w<cr>", "Save File" },
  t = { ":CHADopen<cr>", "Toggle tree/explorer view" },
  D = { ":!rm -f %<cr>:enew<bar>bd #<cr>", "Delete current file" },
  L = { ":!open %<cr>", "Locate file" },
  R = { ":mv % ", "Rename file" },
}

lvim.builtin.which_key.mappings["w"] = {
  name = "Window",
  h = { "<c-w><c-h>", "Focus buffer left" },
  j = { "<c-w><c-j>", "Focus buffer down" },
  k = { "<c-w><c-k>", "Focus buffer up" },
  l = { "<c-w><c-l>", "Focus buffer right" },

  s = { ":split<cr>", "Split window below" },
  v = { ":vsplit<cr>", "Split window right" },

  ['<'] = { "<c-w>15<:WhichKey<cr><leader>w", "Decrease buffer width" },
  ['>'] = { "<c-w>15>:WhichKey<cr><leader>w", "Increase buffer width" },
  ['-'] = { "<c-w>15-:WhichKey<cr><leader>w", "Decrease buffer height" },
  ['+'] = { "<c-w>15+:WhichKey<cr><leader>w", "Increase buffer height" },
}
