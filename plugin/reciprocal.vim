" Function to toggle the candid (taffy) colorscheme
function! ToggleCandid()
    if exists("g:colors_name")
        if g:colors_name == "candid"
            colorscheme nord
            set termguicolors
        elseif g:colors_name == "nord"
            execute "colorscheme ".g:original_colorscheme
            if g:original_termguicolor == 1
                set termguicolors
            else
                set notermguicolors
            endif
        else
            let g:original_termguicolor = &termguicolors
            let g:original_colorscheme = g:colors_name
            colorscheme candid
            set termguicolors
        endif
    else
        let g:original_colorscheme = "default"
        let g:original_termguicolor = &termguicolors
        colorscheme candid
        set termguicolors
    endif
endfunction

nmap <silent> <leader>s :call ToggleCandid()<CR>
