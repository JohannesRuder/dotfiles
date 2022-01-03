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

require "lspconfig".efm.setup{
    init_options = {documentFormatting = true},
    settings = {
        rootMarkers = {".git/"},
	filetypes = { 'cpp' },
        languages = {
	    cpp = {
		{formatCommand = "clang-format-12 --style=file", formatStdin = true}
	    }
        }
    }
}
