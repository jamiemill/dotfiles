# use bass to make a fish-friendly nvm
function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end
