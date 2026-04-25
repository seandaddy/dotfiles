return {
  {
    "nvim-mini/mini.pairs",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.mappings = vim.tbl_deep_extend("force", opts.mappings or {}, {
        ["$"] = { action = "open", pair = "$$", neigh_pattern = "[^\\]." },
      })
    end,
  },
}
