-- Utility function for key mapping
function Map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- Clear highlighted search text
Map('n', '<leader>h', ':nohlsearch<CR>')

-- Quick saving
Map('n', '<C-s>', '<cmd>w<cr><esc>')
Map('i', '<C-s>', '<esc><cmd>w<cr><esc>')

-- Hold onto what was previously copied
Map('v', 'p','"_dP')

-- Panel switching
Map("n", "<C-h>", "<C-w>h")
Map("n", "<C-j>", "<C-w>j")
Map("n", "<C-k>", "<C-w>k")
Map("n", "<C-l>", "<C-w>l")

-- Terminal panel switching
Map("t", "<C-h>", "<cmd>wincmd h<CR>")
Map("t", "<C-j>", "<cmd>wincmd j<CR>")
Map("t", "<C-k>", "<cmd>wincmd k<CR>")
Map("t", "<C-l>", "<cmd>wincmd l<CR>")

-- Resize panels
Map("n", "<C-Up>", ":resize -2<CR>")
Map("n", "<C-Down>", ":resize +2<CR>")
Map("n", "<C-Left>", ":vertical resize -2<CR>")
Map("n", "<C-Right>", ":vertical resize +2<CR>")

-- Quit all
Map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

-- Open Lazy.nvim
Map("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Open lazy control panel" })

