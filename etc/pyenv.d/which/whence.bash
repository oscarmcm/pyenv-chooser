if [ -n "$PYENV_COMMAND" ] && [ ! -x "$PYENV_COMMAND_PATH" ]; then
  versions=($(pyenv-whence "${PYENV_COMMAND}" 2>/dev/null || true))
  if [ -n "${versions}" ]; then
    if [ "${#versions[@]}" -gt 1 ]; then
      echo "pyenv-chooser: Found multiple Python ${PYENV_COMMAND} in pyenv, choose a version." 1>&2
      select option in "${versions[@]}" "cancel"
      do
        case $option in
          cancel)
            break;;
          *)
            echo "Selected Python $option version" 1>&2
            PYENV_COMMAND_PATH="${PYENV_ROOT}/versions/${option}/bin/${PYENV_COMMAND}"
            break;;
        esac
      done
    fi
  fi
fi
