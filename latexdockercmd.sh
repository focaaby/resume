#!/bin/sh
IMAGE=resume-latex

usage() {
  cat <<USAGE
Usage: $0 [build | help | <command> [args...]]

  (no args)    Build resume.pdf (runs make in the container)
  build        Rebuild the $IMAGE image from scratch
  help         Show this help
  <command>    Run any command in the container, e.g.
                 $0 make clean
                 $0 xelatex resume
USAGE
}

case "$1" in
  help|-h|--help)
    usage
    exit 0
    ;;
  build)
    exec docker build --pull --no-cache -t "$IMAGE" "$(dirname "$0")"
    ;;
esac

exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data "$IMAGE" "$@"
