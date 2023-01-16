# Put system-wide fish configuration entries here
# or in .fish files in conf.d/
# Files in conf.d can be overridden by the user
# by files with the same name in $XDG_CONFIG_HOME/fish/conf.d

# This file is run by all fish instances.
# To include configuration only for login shells, use
# if status is-login
#    ...
# end
# To include configuration only for interactive shells, use
# if status is-interactive
#   ...
# end

function __fish_command_not_found_handler --on-event fish_command_not_found
        /data/data/com.termux/files/usr/libexec/termux/command-not-found $argv[1]
end

if status --is-login
    cat /data/data/com.termux/files/home/ciberspy/settings/style/spy.txt
end

#function on_exit --on-event fish_exit
# ...
#end

set PATH /data/data/com.termux/files/usr/bin:/data/data/com.termux/files/home/go/bin
set HOME /data/data/com.termux/files/home
set LD_LIBRARY_PATH /data/data/com.termux/files/usr/lib
