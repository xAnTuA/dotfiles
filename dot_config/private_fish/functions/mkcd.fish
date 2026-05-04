function mkcd -a dir -d "Make directory and change working dir to it"
  if test $dir = ""
    echo "usage mkcd <dir>"
  else
    mkdir $dir && cd $dir
  end
end
