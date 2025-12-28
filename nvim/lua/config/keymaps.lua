vim.keymap.set("n", "<C-p>", ":FloatermToggle<CR>", { silent = true })
vim.keymap.set("n", "<C-1>", ":TimerlyToggle<CR>", { silent = true })
vim.keymap.set("n", "<C-2>", ":ShowkeysToggle<CR>", { silent = true })
-- mouse users + nvimtree users!
vim.keymap.set({ "n", "v" }, "<RightMouse>", function()
  require("menu.utils").delete_old_menus()

  vim.cmd.exec('"normal! \\<RightMouse>"')

  -- clicked buf
  local buf = vim.api.nvim_win_get_buf(vim.fn.getmousepos().winid)
  local options = vim.bo[buf].ft == "NvimTree" and "nvimtree" or "default"

  require("menu").open(options, { mouse = true })
end, {})
