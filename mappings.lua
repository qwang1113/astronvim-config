-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    ["C-p"] = {
      "<cmd>lua vim.diagnostic.goto_prev()<cr>",
      desc = "Previous Diagnostic",
    },
    ["<C-n>"] = { "<cmd>lua vim.diagnostic.goto_next()<cr>", desc = "Next Diagnostic" },

    ["H"] = { "<cmd>bprev<cr>" },
    ["L"] = { "<cmd>bnext<cr>" },

    ["K"] = { "<cmd>lua vim.lsp.buf.hover()<cr>", desc = "Show hover" },
    ["gd"] = { "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "Goto definition" },
    ["gD"] = { "<cmd>lua vim.lsp.buf.declaration()<cr>", desc = "Goto Declaration" },
    ["gr"] = { "<cmd>lua vim.lsp.buf.references()<cr>", desc = "Goto references" },
    ["gI"] = { "<cmd>lua vim.lsp.buf.implementation()<cr>", desc = "Goto Implementation" },
    ["gs"] = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", desc = "show signature help" },
  },
}
