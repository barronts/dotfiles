function chmod --wraps='command chmod -v' --description 'alias chmod=command chmod -v'
    command chmod -v $argv
end
