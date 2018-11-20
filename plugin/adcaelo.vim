" Commande à l'ouverture et lecture d'un fichier
"
"""" autocmd BufNewFile,BufRead *.js call AdcaeloJS()
"""" autocmd BufNewFile,BufRead *.php call AdcaeloPHP()
"""" autocmd BufNewFile,BufRead *.blade.php call AdcaeloBlade()
"""" autocmd BufNewFile,BufRead *.blade.php call AdcaeloJS()
"""" 
"""" 
"""" function! AdcaeloJS()
"""" 
""""     abbrev cl console.log( );<Left><Left><Left>
"""" 
"""" endfunction
"""" 
"""" function! AdcaeloPHP()
"""" 
""""     abbrev dd dd( );<Left><Left><Left><Left>
"""" 
"""" endfunction
"""" 
"""" function! AdcaeloBlade()
"""" 
""""     abbrev dd {{ dd( ) }}<Left><Left><Left><Left><Left>
"""" 
"""" endfunction


" Commande à l'écriture d'un fichier
autocmd BufWritePost *.md call AdcaeloMD()

function! AdcaeloMD()

    silent !pandoc % -o %.pdf

endfunction
