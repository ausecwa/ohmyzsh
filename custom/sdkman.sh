#!/bin/sh

if [ -n "${XRDP_SESSION}" ]; then
  return
fi

export SDKMAN_DIR="${HOME}/.sdkman"

if [ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]; then

  if [ "${SHELL}" != "/bin/sh" ]; then
    # shellcheck disable=SC1090,SC1091
    . "${HOME}/.sdkman/bin/sdkman-init.sh"
  else
    # Basic support for sh
    # shellcheck disable=SC1091
    . "/usr/local/bin/sdkman-init-sh.sh"
  fi
fi

