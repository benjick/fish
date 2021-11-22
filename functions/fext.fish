function fext --description 'Find files with file extension recursivly' -a ext
    find . -type f -name "*.$ext"
end
