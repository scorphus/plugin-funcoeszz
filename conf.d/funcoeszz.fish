set -q ZZPATH; or set -gx ZZPATH $HOME/funcoeszz/funcoeszz
if test -e "$ZZPATH" -a -x "$ZZPATH"
  for file in {(dirname $ZZPATH)/zz/*,zzajuda,zztool,zzzz}
    set func (basename $file .sh)
    function $func -V func -d "funcoeszz"
      $ZZPATH $func $argv
    end
  end
else
  echo "Por favor, instale as funcoeszz https://github.com/funcoeszz e defina ZZPATH"
end
