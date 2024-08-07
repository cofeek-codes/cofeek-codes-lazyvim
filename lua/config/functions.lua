local M = {}

function M.close_other_buffers()
  local current_buffer = vim.api.nvim_get_current_buf()

  for _, buffer in ipairs(vim.api.nvim_list_bufs()) do
    if buffer ~= current_buffer then
      vim.api.nvim_buf_delete(buffer, { force = true })
    end
  end
end

return M
