vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function() vim.hl.on_yank() end,
})

vim.keymap.set("n", " x", ":source<CR>")
vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>")

require("rose-pine").setup({
    styles = {
        italic = false,
    },
})

vim.cmd("colorscheme rose-pine")

-- Init plugins here
require("oil").setup({
    view_options = {
        show_hidden = true,
    },
})
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

require("nvim-web-devicons").setup()
