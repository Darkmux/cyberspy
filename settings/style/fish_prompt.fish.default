# vim: sw=2 sts=2

# AUTHOR: RoflCopter4
# NOTE: All the 'set_color normal' calls throughout are because doing so is
#       the only way to remove bold formatting from output.
# ----------------------------------------------------------------------------

function fish_prompt
  # Cache the status
  set -l prev_status $status

  # Setup a few special characters
  set -l UpperLeft  '┌'
  set -l LowerLeft  '└'
  set -l UpperRight '┐'
  set -l barChar '─'
  #set -l BarChar '-'

  # Could have also used these more rounded characters...
  #set -l UpperLeft  '╭'
  #set -l LowerLeft  '╰'

  if [ $Use_Fish_PWD ]
   set _Prompt_PWD (prompt_pwd)
  else
    # Get the FULL prompt
    set _Prompt_PWD (pwd | sed "s|$HOME|~|")
  end

  # Calculate the length of the second line of the prompt
  if [ $prev_status -eq 0 ]
    set Prompt_Size (string length "$LowerLeft($USER@$HOSTNAME) $_Prompt_PWD \$ ")
  else
    set Prompt_Size (string length "$LowerLeft($prev_status:$USER@$HOSTNAME) $_Prompt_PWD \$ ")
  end 

  # Determine the size of 2 fifths of the current display. If the prompt is
  # longer than that we will split it into 3 lines.
  set -l MaxPromptSize (math (math 2 \* $COLUMNS) \/ 5)

  # ------------------------------------------------------------------------

  # Display the horizontal bar
  set -l hBar $UpperLeft
  set -l BarWidth (math $COLUMNS - 2)
  for x in (seq $BarWidth)
    set hBar $hBar$barChar
  end
  set hBar $hBar$UpperRight

  set_color -o blue
  echo $hBar

  # Display the lead in to the prompt
  echo -n $LowerLeft"("

  # Display the return status of the previous command if it was not 0
  if not [ $prev_status -eq 0 ]
    set_color normal
    set_color red
    echo -n $prev_status
    set_color blue
    echo -n ':'
  end

  # Display username in red if root or fakeroot, and green otherwise.
  # Might as well also determine which prompt character to display later.
  if [ $USER = root -o $USER = toor ]
    set_color -o red
    set Prompt_Char '# '
  else
    set_color normal
    set_color green
    if [ "$csh_junkie" ]
      set Prompt_Char '% '
    else
      set Prompt_Char '$ '
    end
  end
  echo -n $USER

  # Just an '@' sign, in non-bold blue
  set_color normal
  set_color blue
  echo -n '@'

  # Display the host name and the closing parenthesis
  set_color yellow
  echo -n $HOSTNAME
  set_color -o blue
  echo -n ') '

  # Display the working directory
  # If the prompt is too big include a newline, otherwise add a space.
  set_color normal
  set_color magenta
  if [ $Prompt_Size -gt $MaxPromptSize ]
    echo $_Prompt_PWD
  else
    echo -n $_Prompt_PWD" "
  end

  # Reset colors, display the appropriate prompt character, and we're done.
  set_color normal
  echo -n $Prompt_Char
end

