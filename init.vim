for f in split(glob('~/.config/nvim/configs/*.vim'), '\n')
	exe 'source' f
endfor

" lua <<EOF
" require'nvim-treesitter.configs'.setup {
"   ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
"   highlight = {
"     enable = true,              -- false will disable the whole extension
"   },
" }
" EOF

