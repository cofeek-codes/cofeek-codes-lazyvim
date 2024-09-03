local M = {}

function M.close_other_buffers()
  local current_buffer = vim.api.nvim_get_current_buf()

  for _, buffer in ipairs(vim.api.nvim_list_bufs()) do
    if buffer ~= current_buffer then
      vim.api.nvim_buf_delete(buffer, { force = true })
    end
  end
end

function M.change_language()
  local current_keymap = vim.opt.keymap:get()

  if current_keymap == "" then
    vim.opt.keymap = "russian-jcukenwin"
    vim.notify("Language changed to Russian", vim.log.levels.INFO, {
      title = "Neovim Language",
      icon = "🇷🇺",
    })
  elseif current_keymap == "russian-jcukenwin" then
    vim.opt.keymap = ""
    vim.notify("Language changed to English", vim.log.levels.INFO, {
      title = "Neovim Language",
      icon = "🇬🇧",
    })
  end
end

return M
