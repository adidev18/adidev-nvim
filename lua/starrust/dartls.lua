require 'lspconfig'.dartls.setup{
	cmd = { "dart", "language-server", "--protocol=lsp" },
	filetypes = { "dart" },
	root_pattern = {"pubspec.yaml"}
}
