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

nnoremap <silent> <leader>s :call ToggleCandid()<CR>


" Function to set Material colorscheme and cycle through its dark themes
function! ToggleMaterialDarkThemes()
    if exists("g:colors_name") && g:colors_name == "material"
        if g:material_theme_style == 'default'
            let g:material_theme_style='palenight'
            colorscheme material
            echom "Setting Material colorscheme to Theme: ** palenight **"
        elseif g:material_theme_style == 'palenight'
            let g:material_theme_style='ocean'
            colorscheme material
            echom "Setting Material colorscheme to Theme: ** ocean **"
"        elseif g:material_theme_style == 'ocean'
"            let g:material_theme_style='lighter'
"            colorscheme material
"            echom "Setting Material colorscheme to Theme: ** lighter **"
        elseif g:material_theme_style == 'ocean'
            let g:material_theme_style='darker'
            colorscheme material
            echom "Setting Material colorscheme to Theme: ** darker **"
        else
            let g:material_theme_style='default'
            colorscheme material
            echom "Setting Material colorscheme to Theme: ** default **"
        endif
    else
        set termguicolors
        colorscheme material
    endif
endfunction

nnoremap <silent> <leader>m :call ToggleMaterialDarkThemes()<CR>

