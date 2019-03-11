inoremap <silent> jj <ESC>
inoremap <silent> <C-j> j
inoremap <silent> kk <ESC>
inoremap <silent> <C-k> k
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi^V{<C-R>z}<ESC>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap ( "zdi^V(<C-R>z)<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>
nnoremap <Esc><Esc> :noh<CR>
nnoremap <silent><C-e> :Defx -columns=icons:filename:type<CR>
nnoremap <silent><C-i> :Files<CR>
nnoremap <silent><C-r> :Rg<CR>
nnoremap <silent><C-s> :vsplit<CR><C-w><C-w>
nnoremap <silent><C-c> :split<CR><C-w><C-w>
imap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : deoplete#mappings#manual_complete()
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<C-h>"

" move end of screen last line when tap v twice
vnoremap v $h
nmap <Leader>c <Plug>(caw:i:toggle)
vmap <Leader>c <Plug>(caw:i:toggle)