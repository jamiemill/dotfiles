pink = "f25"
lime = "3d2"
turquoise = "0aa"
orange = "c60"
grey = "444"
blue = "24f"
white = "fff"

# Comment

vim_colors "jamie" do
  author "Jamie Mill"
  notes  "Jamie's theme"

  reset      true
  background :dark

  Normal "999", "111"

  Folded "808080", "ECECEC", :gui => "bold"
  link :vimFold, :FoldColumn, :to => :Folded
  LineNr grey, "222"

  rubyControl lime
  rubySymbol pink
  Comment grey
  rubyComment grey

  Statement orange
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

  #jsFuncCall lime
  jsParens lime

  jsBraces pink
  jsFunctionKey pink
  jsObjectKey pink

  link :htmlTagName, :to => :Normal
  htmlTag blue
  htmlEndTag blue
  htmlSpecialTagName blue
  htmlArg blue
  htmlTitle pink
  link :htmlH1, :htmlH2, :htmlH3, :htmlH4, :htmlH5, :htmlH6, :to => :htmlTitle

  cssClassName pink
  cssTagName lime
  cssBraces blue
  

end

