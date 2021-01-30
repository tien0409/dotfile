" Remove highlight
map <C-m> :nohl<CR>

" Supertab config
let g:SuperTabDefaultCompletionType="<c-n>"

" Syntax config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" Import js config
let g:js_file_import_no_mappings=1
nnoremap <Leader>j <Plug>(JsFileImport)
nnoremap <Leader>i <Plug>(JsFixImport)
nnoremap <Leader>jl <Plug>(JsFileImportList)
nnoremap <Leader>g <Plug>(JsGotoDefinition)
nnoremap <Leader>is <Plug>(SortJsFileImport)
let g:js_file_import_string_quote='"'
let g:js_file_import_strip_file_extension=0 " cut extension file
let g:js_file_import_package_first=0
let g:js_file_import_prompt_if_no_tag=0 " disabled prompted enter path when not found 
set wildignore+=*node_modules/**

" NERDTree config
noremap <C-f> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeShowHidden=1

" NERDTree git config
" let g:NERDTreeGitStatusIndicatorMapCustom = {
"                 \ 'Modified'  :'✹',
"                 \ 'Staged'    :'✚',
"                 \ 'Untracked' :'✭',
"                 \ 'Renamed'   :'➜',
"                 \ 'Unmerged'  :'═',
"                 \ 'Deleted'   :'✖',
"                 \ 'Dirty'     :'✗',
"                 \ 'Ignored'   :'☒',
"                 \ 'Clean'     :'✔︎',
"                 \ 'Unknown'   :'?',
"                 \ }
let g:NERDTreeGitStatusConcealBrackets=1

" Ctrlp config
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
let g:ctrlp_custom_ignore={
  \ 'dir':  '\v[\/](node_modules|build|bundle|public|lib|dist)|(\.(git|svn))$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
let g:ctrp_map='<C-p>'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_working_path_node='rc'

" Coc config
let g:coc_global_extensions=['coc-json',  'coc-snippets', 'coc-tsserver',  'coc-emmet', 'coc-html', 'coc-css', 'coc-clangd', 'coc-eslint', 'coc-prettier']
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gq <Plug>(coc-fix-current)
nmap <silent> ga <Plug>(coc-codeaction)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gn <Plug>(coc-rename)

let g:coc_snippet_next='<Tab>'              " Use Tab to jump to next snippet placeholder
let g:coc_snippet_prev='<S-Tab>'

" Press Enter to select completion items or expand snippets
inoremap <silent><expr> <CR>
  \ pumvisible() ? "\<C-y>" :
  \ "\<C-g>u\<CR>"

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <C-space> coc#refresh()
  nnoremap <silent><expr> <C-space> coc#refresh()
else
  inoremap <silent><expr> <C-@> coc#refresh()
endif

inoremap <silent><expr> <C-j> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use L to show documentation in preview window.
nnoremap <silent> L :call <SID>show_documentation()<CR>

" Remap <C-t> and <C-b> for scroll float windows/popups.
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-b>"
nnoremap <silent><nowait><expr> <C-t> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-t>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-t> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-b>"
vnoremap <silent><nowait><expr> <C-t> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-t>"

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
" Use <leader>x for convert visual selected code to snippet
xmap <Leader>x  <Plug>(coc-convert-snippet)

" use :Format to format current buffer
command! -nargs=0 Format :call CocAction('format')
nmap <Leader>f :Format <CR>

" Easymotion
" s{char}{char} to move to {char}{char} over windows
nmap <Leader>F <Plug>(easymotion-overwin-f)
" Move to line over windows
nmap <silent> fl <Plug>(easymotion-overwin-line)
" Search n-chars
map / <Plug>(easymotion-sn)
" case sensitive
let g:EasyMotion_smartcase=1


" Multi select
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<ESC>'

" Auto close tag
let g:closetag_filenames='*.html,*.js,*.jsx,*.vue'
let g:closetag_emptyTags_caseSensitive=1
let g:jsx_ext_required=0

" Lightline
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'cocstatus', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo', 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'cocstatus': 'coc#status'
      \ },
      \ }

" Fzf config
noremap . :Files<CR>
noremap , :Buffers<CR>
let g:fzf_layout={ 'down': '25%'}
nnoremap K :Rg <C-R><C-W><CR>
nnoremap \ :Rg<SPACE>

" Rainbow config
let g:rainbow#max_level = 16
autocmd FileType * RainbowParentheses

" Javascript
let g:javascript_plugin_jsdoc = 1

" Tagbar config
nmap <F2> :TagbarToggle<CR>
let g:tagbar_type_css = {
\ 'ctagstype' : 'Css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
\ }

" Jsx
let g:jsx_ext_required=1

" Yats 
let g:yats_host_keyword=1
set re=0
