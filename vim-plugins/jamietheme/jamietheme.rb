require "./powerline_colours.rb"
require "color"

def to_vim(color)
  color.html[1..-1]
end

module ::Palette
  Black = ::Color::RGB.by_hex("#000000")
  White = ::Color::RGB.by_hex("#ffffff")

  Pink = ::Color::RGB.by_hex("#ff2255")
  Lime = ::Color::RGB.by_hex("#33dd22")
  Yellow = ::Color::RGB.by_hex("#cccc22")
  Blue = ::Color::RGB.by_hex("#"+PowerlineColours[:blue])

  Almostblack = Black.mix_with(Blue, 80)

  Darkgrey = Almostblack.mix_with(White, 80)
  Grey = Almostblack.mix_with(White, 70)
  Midgrey = Almostblack.mix_with(White, 60)
  Lightgrey = Almostblack.mix_with(White, 50)
end

black = to_vim(Palette::Black)
white = to_vim(Palette::White)
pink = to_vim(Palette::Pink)
lime = to_vim(Palette::Lime)
yellow = to_vim(Palette::Yellow)
blue = to_vim(Palette::Blue)
almostblack = to_vim(Palette::Almostblack)
darkgrey = to_vim(Palette::Darkgrey)
grey = to_vim(Palette::Grey)
midgrey = to_vim(Palette::Midgrey)
lightgrey = to_vim(Palette::Lightgrey)

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
