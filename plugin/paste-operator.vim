if exists('g:loaded_paste_operator') || v:version < 100
    finish
endif
let g:loaded_paste_operator = 1

let s:blockwise = 'blockwise visual'
let s:visual = 'visual'
let s:motion = 'motion'
let s:linewise = 'linewise'

function! s:paste_operator(type, ...) abort
    let register = @p
    let mode = <SID>resolve_mode(a:type, a:0)
    if mode == s:linewise
        let lines = { 'start': line("'["), 'end': line("']") }
        silent exe lines.start . ',' . lines.end . '"pdP'
    elseif mode == s:visual || mode == s:blockwise
        silent exe 'normal! `<' . a:type . '`>"pdP'
    else
        silent exe "normal! `[v`]\"_c".getreg(g:currentRegister)
    endif
    let @0 = @p
    let @p = register
endfunction

function! s:resolve_mode(type, arg)
    let visual_mode = a:arg != 0
    if visual_mode
        return (a:type == '') ?  s:blockwise : s:visual
    elseif a:type == 'line'
        return s:linewise
    else
        return s:motion
    endif
endfunction

nnoremap <silent> <Plug>PasteOperator :let g:currentRegister=v:register<cr>:<C-U>set opfunc=<SID>paste_operator<CR>g@

if !hasmapto('<Plug>PasteOperator', 'n') || maparg('p', 'n') ==# ''
    nnoremap pp p
    nmap p <Plug>PasteOperator
endif

