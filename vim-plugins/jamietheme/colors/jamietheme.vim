" Vim color file
"   This file was generated by Palette
"   http://rubygems.org/gems/palette
"
" Author: Jamie Mill
" Notes:  Jamie's theme

hi clear
if version > 580
    if exists("syntax_on")
        syntax reset
    endif
endif

let colors_name="jamietheme"

if has("gui_running")
    set background=dark
endif

hi Normal                guifg=#999999 ctermfg=246  guibg=#111111 ctermbg=233  gui=NONE cterm=NONE
hi Folded                guifg=#555555 ctermfg=240  guibg=#222222 ctermbg=235  gui=BOLD cterm=BOLD
hi LineNr                guifg=#444444 ctermfg=238  guibg=#222222 ctermbg=235  gui=NONE cterm=NONE
hi rubyControl           guifg=#33DD22 ctermfg=76   gui=NONE cterm=NONE
hi rubySymbol            guifg=#FF2255 ctermfg=197  gui=NONE cterm=NONE
hi Comment               guifg=#444444 ctermfg=238  gui=NONE cterm=NONE
hi rubyComment           guifg=#444444 ctermfg=238  gui=NONE cterm=NONE
hi Statement             guifg=#33DD22 ctermfg=76   gui=NONE cterm=NONE
hi PreProc               guifg=#2244FF ctermfg=27   gui=NONE cterm=NONE
hi Boolean               guifg=#CC6600 ctermfg=166  gui=NONE cterm=NONE
hi rubyBoolean           guifg=#CC6600 ctermfg=166  gui=NONE cterm=NONE
hi Number                guifg=#33DD22 ctermfg=76   gui=NONE cterm=NONE
hi Constant              guifg=#00AAAA ctermfg=37   gui=NONE cterm=NONE
hi rubyString            guifg=#00AAAA ctermfg=37   gui=NONE cterm=NONE
hi rubyStringDelimiter   guifg=#00AAAA ctermfg=37   gui=NONE cterm=NONE
hi Special               guifg=#FF2255 ctermfg=197  gui=NONE cterm=NONE
hi Operator              guifg=#33DD22 ctermfg=76   gui=NONE cterm=NONE
hi Type                  guifg=#2244FF ctermfg=27   gui=NONE cterm=NONE
hi rubyConstant          guifg=#2244FF ctermfg=27   gui=NONE cterm=NONE
hi jsFuncParens          guifg=#2244FF ctermfg=27   gui=NONE cterm=NONE
hi jsFuncBraces          guifg=#2244FF ctermfg=27   gui=NONE cterm=NONE
hi jsParens              guifg=#33DD22 ctermfg=76   gui=NONE cterm=NONE
hi jsBraces              guifg=#FF2255 ctermfg=197  gui=NONE cterm=NONE
hi jsFunctionKey         guifg=#FF2255 ctermfg=197  gui=NONE cterm=NONE
hi jsObjectKey           guifg=#FF2255 ctermfg=197  gui=NONE cterm=NONE
hi jsThis                guifg=#444444 ctermfg=238  gui=NONE cterm=NONE
hi htmlTag               guifg=#444444 ctermfg=238  gui=NONE cterm=NONE
hi htmlSpecialTagName    guifg=#2244FF ctermfg=27   gui=NONE cterm=NONE
hi htmlArg               guifg=#2244FF ctermfg=27   gui=NONE cterm=NONE
hi htmlTitle             guifg=#FF2255 ctermfg=197  gui=NONE cterm=NONE
hi cssClassName          guifg=#FF2255 ctermfg=197  gui=NONE cterm=NONE
hi cssTagName            guifg=#33DD22 ctermfg=76   gui=NONE cterm=NONE
hi cssBraces             guifg=#2244FF ctermfg=27   gui=NONE cterm=NONE
hi DiffAdd               guifg=#33DD22 ctermfg=76   guibg=#333333 ctermbg=236  gui=NONE cterm=NONE
hi DiffChange            guibg=#444444 ctermbg=238  gui=NONE cterm=NONE
hi DiffDelete            guifg=#FF2255 ctermfg=197  guibg=#333333 ctermbg=236  gui=NONE cterm=NONE
hi SignColumn            guibg=#222222 ctermbg=235  gui=NONE cterm=NONE
hi GitGutterAdd          guifg=#33DD22 ctermfg=76   guibg=#222222 ctermbg=235  gui=NONE cterm=NONE
hi GitGutterChange       guifg=#CC6600 ctermfg=166  guibg=#222222 ctermbg=235  gui=NONE cterm=NONE
hi GitGutterDelete       guifg=#FF2255 ctermfg=197  guibg=#222222 ctermbg=235  gui=NONE cterm=NONE
hi GitGutterChangeDelete guifg=#CC6600 ctermfg=166  guibg=#222222 ctermbg=235  gui=NONE cterm=NONE
hi Search                guifg=#222222 ctermfg=235  guibg=#BBBB22 ctermbg=142  gui=NONE cterm=NONE
hi MatchParen            guifg=#222222 ctermfg=235  guibg=#999900 ctermbg=100  gui=NONE cterm=NONE
hi Visual                guibg=#444444 ctermbg=238  gui=NONE cterm=NONE
hi StatusLine            guibg=#222222 ctermbg=235  gui=NONE cterm=NONE
hi VertSplit             guibg=#222222 ctermbg=235  gui=NONE cterm=NONE

hi link vimFold     Folded
hi link FoldColumn  Folded
hi link htmlTagName Normal
hi link htmlEndTag  htmlTag
hi link htmlH1      htmlTitle
hi link htmlH2      htmlTitle
hi link htmlH3      htmlTitle
hi link htmlH4      htmlTitle
hi link htmlH5      htmlTitle
hi link htmlH6      htmlTitle
hi link lessClass   cssClassName
