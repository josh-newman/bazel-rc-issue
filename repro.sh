#!/usr/bin/env bash

set -euxo pipefail

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

cd "$ROOT/workspace-with-bazelrc"
# This build succeeds because it's not loading $HOME/.bazelrc:
HOME="$ROOT/home-with-bad-bazelrc" bazel build //:noop

cd "$ROOT/workspace-without-bazelrc"
# This build fails because it is:
HOME="$ROOT/home-with-bad-bazelrc" bazel build //:noop
