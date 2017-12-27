#!/bin/sh

# See https://github.com/travis-ci/travis-ci/issues/1066
# Fail if one of the commands of this script fails
set -e

echo "Build Docker image aifagovit/helloworld"
docker build --rm -t aifa-gov-it/helloworld:latest .

set +e
