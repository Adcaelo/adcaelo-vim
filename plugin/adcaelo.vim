" Commande à l'ouverture et lecture d'un fichier
"
autocmd BufNewFile,BufRead *.js call AdcaeloJS()
autocmd BufNewFile,BufRead *.php call AdcaeloPHP()
autocmd BufNewFile,BufRead *.tpl call AdcaeloTPL()
autocmd BufNewFile,BufRead *.ts call AdcaeloTS()

" Commande à l'écriture d'un fichier
autocmd BufWritePost *.md call AdcaeloMD()


function! AdcaeloJS()

    abbrev cl console.log( );<Left><Left><Left>

endfunction

function! AdcaeloPHP()

    abbrev vd var_dump( );<CR>die();<Up><Right><Right><Right>
    abbrev prd print_r( );die();<Left><Left><Left><Left><Left><Left><Left><Left><Left>
    abbrev p_r print_r( );<Left><Left><Left>

endfunction

function! AdcaeloTPL()

    abbrev dl {debug-log var= msg=""}<Left><Left><Left><Left><Left><Left><Left><Left>

endfunction

function! AdcaeloTS()

    abbrev newmessage <message><CR><source></source><CR><translation></translation><CR></message><CR>

    abbrev newcontext <context><CR><name></name><CR></context>

endfunction


function! AdcaeloMD()

    silent !pandoc % -o %.pdf

endfunction
