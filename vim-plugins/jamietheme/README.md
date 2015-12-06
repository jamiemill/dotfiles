# My VIM Theme

Regeneration requires the `palette` rubygem:

    gem install palette

To regenerate and reload, run this in vim:

    :!vim-plugins/jamietheme/regenerate.sh
    :source vim-plugins/jamietheme/colors/jamietheme.vim

To find out the name of any highlightGroup in vim so you can style it, install
'hilinktrace' put the cursor over the text, and type '\hlt'.
