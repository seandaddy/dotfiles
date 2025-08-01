return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  keys = {
    { "<leader>on", "<cmd>ObsidianNew<cr>", desc = "New Obsidian note", mode = "n" },
    { "<leader>oo", "<cmd>ObsidianSearch<cr>", desc = "Search Obsidian notes", mode = "n" },
    { "<leader>os", "<cmd>ObsidianQuickSwitch<cr>", desc = "Quick Switch", mode = "n" },
    { "<leader>ob", "<cmd>ObsidianBacklinks<cr>", desc = "Show location list of backlinks", mode = "n" },
    { "<leader>ot", "<cmd>ObsidianTemplate<cr>", desc = "Follow link under cursor", mode = "n" },
    { "<leader>op", "<cmd>ObsidianPasteImg<cr>", desc = "Paste imate from clipboard under cursor", mode = "n" },
  },
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  -- "BufReadPre /Users/drsyoh/Library/Mobile Documents/iCloud~md~obsidian/Documents/Sangyong/*.md",
  -- "BufNewFile /Users/drsyoh/Library/Mobile Documents/iCloud~md~obsidian/Documents/Sangyong/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "Personal",
        path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/drsyoh/0. Inbox/",
      },
      -- {
      --   notes_subdir = "Notes",
      --   new_notes_location = "notes_subdir",
      -- },
    },
    -- see below for full list of options 👇
  },
}
