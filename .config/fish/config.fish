if status is-interactive
    # Commands to run in interactive sessions can go here
   starship init fish | source
   set --export PATH $HOME/.cargo/bin $PATH

end

function pendrive
  if test -z "$argv"
    cd /media/rick/Ventoy
  else
    cd /media/rick/Ventoy/$argv
  end
end
 
