_auto_switch_node_versions () {
  [ "$LAST_PWD_WITH_NVMRC" != "$PWD" -a -f .nvmrc ] && {
    LAST_PWD_WITH_NVMRC="$PWD"
    [ "$(cat .nvmrc)" == "$(nvm current)" ] || nvm use || nvm install
  }
}
PROMPT_COMMAND="_auto_switch_node_versions; $PROMPT_COMMAND"
