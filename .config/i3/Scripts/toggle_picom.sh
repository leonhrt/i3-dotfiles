#!/usr/bin/env bash
# Change the above shebang to your default!

picom=$(ps -e | grep picom)

if [ -z "$picom" ]; then
  systemctl --user start picom.service
else
  systemctl --user stop picom.service
fi
