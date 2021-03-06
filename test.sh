#!/usr/bin/env bash

set -eo pipefail

EXIT_STATUS=0

(xcodebuild \
  -workspace ${SAMPLE}/${SAMPLE}Example.xcworkspace \
  -scheme ${SAMPLE}Example \
  -sdk iphonesimulator \
  -destination 'platform=iOS Simulator,OS=11.2,name=iPhone X' \
  build \
  test \
  ONLY_ACTIVE_ARCH=YES \
  CODE_SIGNING_REQUIRED=NO \
  | xcpretty) || EXIT_STATUS=$?
  
  exit $EXIT_STATUS
