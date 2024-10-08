if [[ -v SETUP_FIRST_RUN_OPTIONAL_APPS ]]; then
  apps=$SETUP_FIRST_RUN_OPTIONAL_APPS

  if [[ -n "$apps" ]]; then
    for app in $apps; do
      source "$SETUP_PATH/install/desktop/optional/app-${app,,}.sh"
    done
  fi
fi
