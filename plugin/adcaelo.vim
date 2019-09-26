" Commande à l'ouverture et lecture d'un fichier
"
"""" autocmd BufNewFile,BufRead *.js call AdcaeloJS()
"""" autocmd BufNewFile,BufRead *.php call AdcaeloPHP()
"""" autocmd BufNewFile,BufRead *.blade.php call AdcaeloJS()
"""" 
"""" 
"""" function! AdcaeloJS()
"""" 
""""     abbrev cl console.log( );<Left><Left><Left>
"""" 
"""" endfunction
"""" 
"""" 
"""" function! AdcaeloBlade()
"""" 
""""     abbrev dd {{ dd( ) }}<Left><Left><Left><Left><Left>
"""" 
"""" endfunction



autocmd BufNewFile,BufRead *.php call AdcaeloPHP()
autocmd BufNewFile,BufRead *.blade.php call AdcaeloBlade()

function! AdcaeloPHP()

    abbrev dd dd);<Left><Left>
    abbrev log \Illuminate\Support\Facades\Log::debug);<Left><Left>

endfunction
function! AdcaeloBlade()

    abbrev dd {{ dd) }}<Left><Left><Left><Left>
    abbrev log {{ \Illuminate\Support\Facades\Log::debug) }}<Left><Left><Left><Left>

endfunction

" Commande à l'écriture d'un fichier
autocmd BufWritePost *.md call AdcaeloMD()

function! AdcaeloMD()

    silent !pandoc % -o %.pdf

endfunction

""" Raccourcis Fx

" Format JSON
nmap <F5> :%!python -m json.tool<CR>

" ouvrir le prochain buffer dans un nouveau split
map <F6> <ESC>:sp <bar> n<CR>

" Trouver le fichier actuel dans NERDTree
nmap <F7> :NERDTreeFind<CR>

" Afficher les tags
nmap <F8> :TagbarToggle<CR>


""" Configs

" Ignore vendors and storage
set wildignore+=*/vendor/*,*/node_modules/*
