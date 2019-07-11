" Function to toggle the candid (taffy) colorscheme
function! ToggleCandid()
    if exists("g:colors_name")
        "if g:colors_name == "taffy"
        if g:colors_name == "candid"
            execute "colorscheme ".g:color_prev
            set termguicolors!
        else
            let g:color_prev = g:colors_name
            colorscheme candid
            set termguicolors
        endif
    else
        let g:color_prev = "default"
        colorscheme candid
        set termguicolors
    endif
endfunction

nmap <silent> <leader>s :call ToggleCandid()<CR>
