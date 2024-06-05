-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- but clear on pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Accessibility Shortcuts
vim.keymap.set("n", "<leader>ee", ":Oil --float<CR>", { desc = "[E]xplore File [E]xplorer" })
vim.keymap.set("n", "<leader>qq", ":qa<CR>", { desc = "Quit Vim(no save)" })
vim.keymap.set("n", "ss", ":w<CR>", { desc = "Save Current Buffer" })

-- Open terminal
vim.keymap.set("n", "<leader>et", ":terminal<CR>", { desc = "[E]xplore [T]erminal" })

-- Toggle Diff
vim.keymap.set("n", "<leader>gd", ":lua MiniDiff.toggle_overlay()<CR>", { desc = "Toggle [D]iff" })
