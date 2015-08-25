#! /bin/bash
set -e

case "$@" in
    bash)
        /bin/bash
    ;;
    *)
        jinja2 $@
    ;;
esac
