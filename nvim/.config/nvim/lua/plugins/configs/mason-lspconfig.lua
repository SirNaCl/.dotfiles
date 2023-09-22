return function(_, opts)
  require("mason-lspconfig").setup(opts)
  require("astronvim.utils").event "MasonLspSetup"
  -- require("lspconfig").clangd.setup({
  --   arguments = ["--query-driver=**-poky-*"],
  -- })
  -- require("mason-lspconfig").clangd.arguments=['--query-driver=**-poky-*']
end
