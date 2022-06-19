local M = {}

---@class LspSignatureEnhancedKeymaps
---@field next_signature string
---@field previous_signature string
---@field next_parameter string
---@field previous_paramter string

---@class LspSignatureEnhancedSettings
---@field border '"none"'|'"single"'|'"double"'
---@field keymaps LspSignatureEnhancedKeymaps
local DEFAULT_SETTINGS = {
  ui = {
    -- The border to use for the signature popup window. Accepts same border values as |nvim_open_win()|.
    border = "none",

    keymaps = {
      next_signature = "<C-j>",
      previous_signature = "<C-k>",
      next_parameter = "<C-l>",
      previous_paramter = "<C-h>",
    },
  }
}

M._DEFAULT_SETTINGS = DEFAULT_SETTINGS
M.current = M._DEFAULT_SETTINGS

---@param opts LspSignatureEnhancedSettings
function M.set(opts)
  M.current = vim.tbl_deep_extend("force", M.current, opts)
end

return M
