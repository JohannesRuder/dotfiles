-- Enable basic formatting when a filetype is not found, disabled by default
-- Enable alignment
vim.g.neoformat_basic_format_align = 1

 -- Enable tab to spaces conversion
vim.g.neoformat_basic_format_retab = 1

-- Enable trimmming of trailing whitespace
vim.g.neoformat_basic_format_trim = 1

-- Use autocmd to run Neoformat on save
vim.cmd [[
    augroup autoformat
        autocmd FileType bzl
            \ autocmd! autoformat BufWritePre <buffer> Neoformat
        autocmd FileType cpp
            \ autocmd! autoformat BufWritePre <buffer> lua vim.lsp.buf.formatting() 
        autocmd FileType python
            \ autocmd! autoformat BufWritePre <buffer> lua vim.lsp.buf.formatting()  
    augroup END
]]
