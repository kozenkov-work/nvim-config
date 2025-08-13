local lspServers = {
	"lua_ls",
	"ts_ls",
	"clangd",
	"serve_d",
	"cssls",
	"ast_grep",
	"volar",
	"svelte",
	"clojure_lsp",
	"rust_analyzer",
  "pylsp",
  "jsonls",
  "kotlin_language_server",
  "emmet_ls"
}

-- local mason_registry = require("mason-registry")
local lspInitOptions = {
	ts_ls = {
	},
}

local tsEnsureInstalled = {
	"lua",
	"vim",
	"vimdoc",
	"javascript",
	"typescript",
	"html",
	"svelte",
	"css",
	"scss",
  "kotlin",
  "json",
  "haskell"
}

return {
	lspServers = lspServers,
	lspInitOptions = lspInitOptions,
	tsEnsureInstalled = tsEnsureInstalled,
}
