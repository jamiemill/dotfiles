almostblack = "111"
darkgrey = "222"
grey = "444"
lightgrey = "999"
white = "fff"

pink = "f25"
lime = "3d2"
orange = "c60"
blue = "24f"
highlight = "bb2"

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
  Boolean orange
  rubyBoolean orange
  Number orange


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

  markdownHeadingDelimiter pink

  DiffAdd lime, "333"
  DiffChange :bg => grey
  DiffDelete pink, "333"

  SignColumn :bg => almostblack
  GitGutterAdd lime
  GitGutterChange orange
  GitGutterDelete pink
  GitGutterChangeDelete orange

  Search darkgrey, highlight
  MatchParen darkgrey, "990"

  Visual :bg => grey

  StatusLine lightgrey, grey
  StatusLineNC grey, darkgrey
  VertSplit :bg => darkgrey

end

