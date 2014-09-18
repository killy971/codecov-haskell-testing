#!/bin/sh

echo "Running curl command with travis_job_id=$TRAVIS_BUILD_ID and commit=$TRAVIS_COMMIT"

curl -v -X POST -H 'Content-Type: application/json' -d '{ "coverage": { "src/Util.hs": [null, null, null, 0, true, 1] } }' https://codecov.io/upload/v1?travis_job_id=$TRAVIS_BUILD_NUMBER&commit=$TRAVIS_COMMIT&branch=develop

echo "Return code: $?"
