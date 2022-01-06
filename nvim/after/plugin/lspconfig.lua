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

require'lspconfig'.pyright.setup{}

require "lspconfig".efm.setup{
    init_options = {documentFormatting = true},
    settings = {
        rootMarkers = {".git/"},
	filetypes = {'py'},
        languages = {
	    python = {
	    	{formatCommand = "black --quiet -", formatStdin = true}
	    },
        }
    }
}
