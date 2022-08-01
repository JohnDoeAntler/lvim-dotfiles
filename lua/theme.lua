-- colorscheme
lvim.colorscheme = "gruvbox-material"
-- palatte: [hard, medium, soft]
vim.cmd("let g:gruvbox_material_background = 'soft'")
-- status bar colorscheme
lvim.builtin.lualine.options.theme = "gruvbox"
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true

vim.opt.guifont = { "Hack Nerd Font Mono:h12" }
