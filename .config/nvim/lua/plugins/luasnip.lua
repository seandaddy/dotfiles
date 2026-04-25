return {
  "L3MON4D3/LuaSnip",
  build = "make install_jsregexp",
  dependencies = { "rafamadriz/friendly-snippets" },
  config = function()
    local ls = require("luasnip")

    -- LuaSnip setup with proper options
    ls.setup({
      history = true,
      updateevents = "TextChanged,TextChangedI",
      enable_autosnippets = true,
      ext_opts = {
        [require("luasnip.util.types").choiceNode] = {
          active = {
            virt_text = { { "●", "DiagnosticWarn" } }
          }
        }
      }
    })

    -- Load friendly-snippets
    require("luasnip.loaders.from_vscode").lazy_load()

    -- Extend filetypes
    ls.filetype_extend("tex", { "latex" })

    -- Custom autosnippets for tex
    ls.add_snippets("tex", {
      ls.parser.parse_snippet({ trig = "_", wordTrig = false }, "_{$1}"),
      ls.parser.parse_snippet({ trig = "^", wordTrig = false }, "^{$1}"),
    }, { type = "autosnippets" })

    -- Normal snippets for tex
    ls.add_snippets("tex", {
      ls.parser.parse_snippet({ trig = "beg", name = "begin/end" }, "\\begin{$1}\n\t$0\n\\end{$1}"),
    })

    -- Keymaps for snippet navigation
    vim.keymap.set({"i", "s"}, "<C-k>", function()
      if ls.expand_or_jumpable() then
        ls.expand_or_jump()
      end
    end, { silent = true, desc = "Expand or jump to next snippet field" })

    vim.keymap.set({"i", "s"}, "<C-j>", function()
      if ls.jumpable(-1) then
        ls.jump(-1)
      end
    end, { silent = true, desc = "Jump to previous snippet field" })

    vim.keymap.set({"i", "s"}, "<C-l>", function()
      if ls.choice_active() then
        ls.change_choice(1)
      end
    end, { silent = true, desc = "Cycle through snippet choices" })
  end,
}
