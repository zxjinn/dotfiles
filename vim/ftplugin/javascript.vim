let g:syntastic_javascript_eslint_exec="./node_modules/.bin/eslint"
let g:syntastic_javascript_checkers=["eslint"]
let g:syntastic_javascript_eslint_args="--config .eslintrc"

" Comment line(s)
noremap <leader># I// <esc>
vnoremap <leader># 0<C-V>I// <esc>

" Wrap one-liner if/else in braces
nnoremap <leader>{} o{<esc>jo}<esc>3k

" Ack.vim mappings
nnoremap <leader>fi :Ack --js -i 
nnoremap <leader>fs :AckFromSearch --js<cr>
