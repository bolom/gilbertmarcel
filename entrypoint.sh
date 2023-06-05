#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
# rm -f /gilbertmarcel_spina/tmp/pids/server.pid

# bundle exec rake deploy:prepare_db:call

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"