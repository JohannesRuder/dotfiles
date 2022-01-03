require'lspconfig'.clangd.setup{
  cmd = {
        "clangd-12",
	"--all-scopes-completion",
        "--background-index",
        "--clang-tidy",
	"--cross-file-rename",
        "--header-insertion=iwyu",
        "--suggest-missing-includes",
	"-j=8",
      }
}
