#!/usr/bin/env bash

set -e

cd "${0%/*}/.."

echo "Running specs"
bundle exec rspec
