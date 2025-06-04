ZED_THEME="Everforest Light"
ZED_EXTENSION="everforest"
# source $OMAKUB_PATH/themes/set-zed-theme.sh
if command -v zed &>/dev/null; then
  # zed --install-extension $VSC_EXTENSION >/dev/null
  # sed -i "s/\"workbench.colorTheme\": \".*\"/\"workbench.colorTheme\": \"$VSC_THEME\"/g" ~/.config/Code/User/settings.json
  # sed -i "s/\"dark\": \".*\"/\"dark\": \"$ZED_THEME\"/g" ~/.config/zed/settings.json
  sed -i "s/\"light\": \".*\"/\"light\": \"$ZED_THEME\"/g" ~/.config/zed/settings.json
fi
