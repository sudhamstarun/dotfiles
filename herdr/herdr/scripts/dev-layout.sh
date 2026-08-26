#!/bin/sh
set -e

pane=$(herdr pane split --pane "$HERDR_ACTIVE_PANE_ID" --direction right --ratio 0.7 | sed -n 's/.*"pane_id": *"\([^"]*\)".*/\1/p')

herdr pane run "$pane" opencode
herdr pane run "$HERDR_ACTIVE_PANE_ID" hx
