if type -q sed
  for file in (dirname $ZZPATH)/zz/*
    set func (basename $file .sh)
    set desc (sed '2!d' $file | cut -b 3-)
    function $func -V func -d "$desc"
      $ZZPATH $func $argv
    end
  end
  for tool in {zzajuda,zztool,zzzz}
    set func $tool
    function $func -V func -d "funcoeszz"
      $ZZPATH $func $argv
    end
  end
else
  echo "Por favor, instale o sed. Ex: apt-get install sed"
end
