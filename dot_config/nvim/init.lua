if vim.loader then
  vim.loader.enable()
end

vim.opt.rtp:append("/opt/homebrew/opt/fzf")
-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
