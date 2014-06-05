pink = "f25"
lime = "3d2"
turquoise = "0aa"
orange = "c60"
grey = "444"
blue = "24f"
darkgrey = "222"
highlight = "bb2"

# Comment

vim_colors "jamietheme" do

  author "Jamie Mill"
  notes  "Jamie's theme"

  reset      true
  background :dark

  Normal "999", "111"

  Folded "555", darkgrey, :gui => "bold"
  link :vimFold, :FoldColumn, :to => :Folded
  LineNr grey, darkgrey

  rubyControl lime
  rubySymbol pink
  Comment grey
  rubyComment grey

  Statement pink
  PreProc  blue
  Boolean orange
  rubyBoolean orange
  Number lime


  Constant turquoise
  rubyString turquoise
  rubyStringDelimiter turquoise

  Special grey
  Operator lime

  Type blue
  rubyConstant blue
  jsFuncParens blue
  jsFuncBraces blue

  jsParens lime

  jsBraces pink
  jsFunctionKey pink
  jsObjectKey pink

  link :htmlTagName, :to => :Normal
  htmlTag grey
  link :htmlEndTag, :to => :htmlTag
  htmlSpecialTagName blue
  htmlArg blue
  htmlTitle pink
  link :htmlH1, :htmlH2, :htmlH3, :htmlH4, :htmlH5, :htmlH6, :to => :htmlTitle

  cssClassName pink
  cssTagName lime
  cssBraces blue

  DiffAdd lime, "333"
  DiffChange :bg => grey
  DiffDelete pink, "333"

  SignColumn :bg => darkgrey
  GitGutterAdd lime, darkgrey
  GitGutterChange orange, darkgrey
  GitGutterDelete pink, darkgrey
  GitGutterChangeDelete orange, darkgrey

  Search darkgrey, highlight
  MatchParen darkgrey, "990"

  Visual :bg => grey

  StatusLine :bg => darkgrey
  VertSplit :bg => darkgrey

end

