#! /bin/bash
# Save standard output and standard error
exec 3>&1 4>&2
# Redirect standard output to a log file
exec 1>logs/macrambo-normal.log
# Redirect standard error to a log file
exec 2>logs/macrambo-error.log


# Now the output of all commands goes to the log files

rm ~/.macrambo
rm ~/macrambo-enable.sh
rm ~/.config/autostart/macrambo.desktop
rm ~/.local/share/icons/hicolor/128x128/apps/macrambo.png


echo "normal output from ~/Utilities/Mac Rambo/macrambo-uninstall.sh"
echo "errors from ~/Utilities/Mac Rambo/macrambo-uninstall.sh" 1>&2

# Print a message to the original standard output (e.g. terminal)

echo "Done. You may delete ~/Utilities/Mac Rambo" 1>&3


# Restore original stdout/stderr
exec 1>&3 2>&4
# Close the unused descriptors
exec 3>&- 4>&-

# Now the output of all commands goes to the original standard output & erro
