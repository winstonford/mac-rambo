#! /bin/bash
# Save standard output and standard error
exec 3>&1 4>&2
# Redirect standard output to a log file
exec 1>logs/macrambo-normal.log
# Redirect standard error to a log file
exec 2>logs/macrambo-error.log


# Now the output of all commands goes to the log files

cp .macrambo ~/
cp macrambo-enable.sh ~/
cp macrambo.desktop ~/.config/autostart
cp macrambo.png ~/.local/share/icons/hicolor/128x128/apps/


echo "normal output from ~/Utilities/mac-rambo/macrambo-install.sh"
echo "errors from ~/Utilities/mac-rambo/macrambo-install.sh" 1>&2

mkdir -p ~/Utilities/mac-rambo
cp -R $PWD/* ~/Utilities/mac-rambo/
# Print a message to the original standard output (e.g. terminal)
echo "Done. If ~/Utilities/mac-rambo exists, you may delete this folder." 1>&3


# Restore original stdout/stderr
exec 1>&3 2>&4
# Close the unused descriptors
exec 3>&- 4>&-

# Now the output of all commands goes to the original standard output & erro
