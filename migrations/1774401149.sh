echo "Add pi coding agent theme syncing"

if omarchy-cmd-present pi; then
  omarchy-theme-set-pi

  PI_SETTINGS="$HOME/.pi/agent/settings.json"
  if [[ -f $PI_SETTINGS ]]; then
    tmp=$(mktemp)
    jq '.theme = "omarchy"' "$PI_SETTINGS" >"$tmp" && mv "$tmp" "$PI_SETTINGS"
  fi
fi
