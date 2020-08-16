" Color scheme

"
" Name:       airthings.vim
" Maintainer: Torstein Ørbeck Eliassen <torstein.eliassen@eliassen.com>
" License:    MIT
hi clear

if exists('syntax_on')
	syntax reset
endif



let g:colors_name = 'airthings'

let s:stronghold = ['#42515a', ]
let s:congruence = ['#9faab1']
let s:bgray = ['#21282d']
let s:dgray = ['#616f77']
let s:cgray = ['#808c94']
let s:lgray = ['#bfc6cb']

let s:sunlight = ['#ffcd00']
let s:light_yellow = ['#ffd555']
let s:faded_yellow = ['#ffeaaa']

let s:biosphere = ['#4bc682']
let s:light_green = ['#87d9ac']
let s:faded_green = ['#c3ecd5']

let s:atmosphere = ['#4aacd7']
let s:light_blue = ['#86cbe4']
let s:faded_blue = ['#c3e3f2']

let s:purity = ['#ffffff']


let s:red = ['#f24452']
let s:black = ['#000000']


let s:default_fg = s:congruence
let s:default_bg = s:stronghold


let s:default_lst = []
let s:default_str = ''

let s:italic    = 'italic'
let s:bold      = 'bold'
let s:underline = 'underline'
let s:none      = 'NONE'

if !exists("g:monochrome_italic_comments")
  let g:monochrome_italic_comments = 0
endif
let s:comment_attr = g:monochrome_italic_comments ? s:italic : s:none


function! s:hi(...)
	let group = a:1
	let fg    = get(a:, 2, s:default_fg)
	let bg    = get(a:, 3, s:default_bg)
	let attr  = get(a:, 4, s:default_str)

	let cmd = ['hi', group]

	if fg != s:default_lst
		call add(cmd, 'guifg='.fg[0])
	endif

	if bg != s:default_lst && bg != s:default_bg
		call add(cmd, 'guibg='.bg[0])
	endif

	if attr != s:default_str
		call add(cmd, 'gui='.attr)
	endif

	exec join(cmd, ' ')
endfunction

"Vim colors
" ---------------------------
"
call s:hi('Normal', s:lgray)

call s:hi('Cursor', s:black, s:lgray)
call s:hi('CursorLine', s:default_lst, s:bgray, s:none)
call s:hi('CursorLineNr', s:purity, s:default_bg, s:bold)
call s:hi('ColorColumn', s:default_fg, s:bgray)
call s:hi('Search', s:purity, s:atmosphere)
call s:hi('Visual', s:purity, s:atmosphere)
call s:hi('ErrorMsg', s:purity, s:red)

" Tildes at the bottom of a buffer, etc.
call s:hi('NonText', s:dgray)

" Folding.
call s:hi('FoldColumn', s:dgray)
call s:hi('Folded')

" Line numbers gutter.
call s:hi('LineNr', s:dgray)

" Small arrow used for tabs.
call s:hi('SpecialKey', s:atmosphere, s:default_bg, s:bold)

" File browsers.
call s:hi('Directory', s:purity, s:default_bg, s:bold)

" Help.
call s:hi('helpSpecial')
call s:hi('helpHyperTextJump', s:atmosphere, s:default_bg, s:underline)
call s:hi('helpNote')

" Popup menu.
call s:hi('Pmenu', s:purity, s:atmosphere)
call s:hi('PmenuSel', s:atmosphere, s:purity)

" Notes.
call s:hi('Todo', s:black, s:sunlight, s:bold)

" Signs.
call s:hi('SignColumn')


"
" --- Programming languages ---------------------------------------------------

call s:hi('Statement', s:light_yellow , s:default_bg, s:bold)
call s:hi('PreProc', s:purity, s:default_bg, s:bold)
call s:hi('String', s:light_blue)
call s:hi('Comment', s:faded_yellow, s:default_bg, s:comment_attr)
call s:hi('Constant', s:faded_green, s:default_bg)
call s:hi('Type', s:light_yellow, s:default_bg, s:bold)
call s:hi('Function', s:atmosphere)
call s:hi('Identifier')
call s:hi('Special')
call s:hi('MatchParen', s:black, s:lgray)


"
"" --- VimL
"---------------------------------------------------------------------
"

call s:hi('vimOption')
call s:hi('vimGroup')
call s:hi('vimHiClear')
call s:hi('vimHiGroup')
call s:hi('vimHiAttrib')
call s:hi('vimHiGui')
call s:hi('vimHiGuiFgBg')
call s:hi('vimHiCTerm')
call s:hi('vimHiCTermFgBg')
call s:hi('vimSynType')

hi link vimCommentTitle Comment


"
" Python
"-------------------------------------------------------------------
"

call s:hi('pythonEscape', s:atmosphere)


