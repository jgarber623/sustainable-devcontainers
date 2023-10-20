COMPOSE_FILE="./.devcontainer/docker-compose.yml"

log() {
  echo "[ "${0}" ]" "${@}"
}

check_for_docker() {
  if ! command -v "docker"; then
    log "🚨 Docker is not installed! Download and install Docker by visiting:"
    log ""
    log "  https://www.docker.com/get-started/"
    log ""
    exit 1
  fi
}

run_within_docker() {
  FILE="/proc/1/sched"

  if ! [ -r "${FILE}" ] || ! grep -q "docker-init" "${FILE}"; then
    log "🚨 Command \"${@}\" must be executed within the running container:"
    log ""
    log "   bin/exec ${@}"
    log ""

    read -p "Re-execute \"${@}\" within the running container? [yN] " rerun

    if [ "${rerun,,}" = "y" ]; then
      bin/exec "${@}"
    else
      exit 1
    fi
  fi
}
