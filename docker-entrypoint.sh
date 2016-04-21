#!/bin/bash
set -e

case "$1" in
    bash)
        /bin/bash
        ;;
    *)
        jinja2 $@
        ;;
esac
