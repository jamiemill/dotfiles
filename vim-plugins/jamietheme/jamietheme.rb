require "./powerline_colours.rb"
require "color"

def to_vim(color)
  color.html[1..-1]
end

primary_color = ::Color::RGB.by_hex("#" + PowerlineColours[:blue])
black = ::Color::RGB.by_hex("#000000")
white = ::Color::RGB.by_hex("#ffffff")
tinted_black = black.mix_with(primary_color, 80)

almostblack = to_vim(tinted_black)
darkgrey = to_vim(tinted_black.mix_with(white, 80))
grey = to_vim(tinted_black.mix_with(white, 70))
midgrey = to_vim(tinted_black.mix_with(white, 60))
lightgrey = to_vim(tinted_black.mix_with(white, 50))
white = "fff"
pink = "f25"
lime = "3d2"
yellow = "cc2"
blue = PowerlineColours[:blue]
highlight = lightgrey
subduedhighlight = midgrey

vim_colors "jamietheme" do

  author "Jamie Mill"
  notes  "Jamie's theme"

  reset      true
  background :dark

  Normal lightgrey, almostblack

  Folded "555", darkgrey, :gui => "bold"
  link :vimFold, :FoldColumn, :to => :Folded
  LineNr darkgrey
  NonText darkgrey
  TabLine grey, darkgrey
  TabLineSel grey, almostblack
  TabLineFill darkgrey, darkgrey

  rubyControl lime
  rubySymbol pink
  Comment grey
  rubyComment grey

  Statement lime
  PreProc  blue
  Boolean yellow
  rubyBoolean yellow
  Number yellow


  Constant pink
  rubyString pink
  rubyStringDelimiter pink
  Special white
  Identifier white
  Operator lime

  Type blue
  rubyConstant blue
  jsFuncParens grey
  jsFuncBraces grey
  jsFunction grey

  jsParens lime

  jsBraces white
  jsFunctionKey white
  jsObjectKey white
  jsThis grey

  link :htmlTagName, :to => :Normal
  htmlTag grey
  link :htmlEndTag, :to => :htmlTag
  htmlSpecialTagName blue
  htmlArg blue
  htmlString lightgrey
  htmlTitle white
  link :htmlH1, :htmlH2, :htmlH3, :htmlH4, :htmlH5, :htmlH6, :to => :htmlTitle

  cssClassName white
  link :lessClass, :to => :cssClassName
  cssTagName lime
  cssBraces blue

  markdownHeadingDelimiter blue, :gui => "bold"
  markdownH1 blue, :gui => "bold"
  markdownH2 blue, :gui => "bold"
  markdownH3 blue, :gui => "bold"
  markdownH4 blue, :gui => "bold"
  markdownH5 blue, :gui => "bold"
  markdownH6 blue, :gui => "bold"
  markdownListMarker blue
  markdownBold :gui => "bold"
  markdownItalic :gui => "italic"

  DiffAdd lime, "333"
  DiffChange :bg => grey
  DiffDelete pink, "333"

  SignColumn :bg => almostblack
  GitGutterAdd lime
  GitGutterChange yellow
  GitGutterDelete pink
  GitGutterChangeDelete yellow

  Search darkgrey, highlight
  IncSearch darkgrey, subduedhighlight
  MatchParen darkgrey, subduedhighlight

  Visual lightgrey, grey

  StatusLine lightgrey, darkgrey
  StatusLineNC grey, darkgrey
  VertSplit :bg => darkgrey

  Pmenu "555", darkgrey
  PmenuSel darkgrey, highlight # I want this to link to search but that doesn't work, so state explicitly.
  PmenuSbar :bg => grey
  PmenuThumb :bg => lightgrey
  link :Wildmenu, :to => :Search

  CtrlPMatch darkgrey, highlight, :gui => "bold"
  CursorLine darkgrey, subduedhighlight
  CtrlPPrtCursor :gui => "reverse"

  NERDTreeDir lightgrey
  NERDTreeOpenable grey
  NERDTreeClosable lime
  NERDTreeFile midgrey
  NERDTreeExecFile midgrey
  NERDTreeUp darkgrey
  NERDTreeCWD darkgrey

  SpellBad yellow, "NONE"
  SpellCap yellow, "NONE"
  SpellRare yellow, "NONE"
  SpellLocal yellow, "NONE"

end
