let g:coc_global_extensions = [
    \ 'coc-tabnine',
    \ 'coc-spell-checker',
    \ 'coc-cspell-dicts',
    \ 'coc-tsserver',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-stylelint',
    \ 'coc-vimlsp',
    \ 'coc-json',
    \ 'coc-eslint',
    \ 'coc-python',
    \ 'coc-jest',
    \ 'coc-highlight',
    \ 'coc-snippets',
    \ 'coc-prettier',
		\ 'coc-actions',
		\ 'coc-vimtex',
    \]

inoremap  <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()

inoremap 	<expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap  <silent><expr> <C-space> coc#refresh()

nmap  <leader>gd <Plug>(coc-definition)
nmap  <leader>gy <Plug>(coc-type-definition)
nmap  <leader>gi <Plug>(coc-implementation)
nmap  <leader>gr <Plug>(coc-references)
nmap  <leader>rr <Plug>(coc-rename)
nmap  <leader>g[ <Plug>(coc-diagnostic-prev)
nmap  <leader>g] <Plug>(coc-diagnostic-next)
nmap  <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap  <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap  <leader>cr :CocRestart

vmap  <leader>f  <Plug>(coc-format-selected)
nmap  <leader>f  <Plug>(coc-format-selected)

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
