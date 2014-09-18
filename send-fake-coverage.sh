#!/bin/sh

curl -X POST -H 'Content-Type: application/json' -d '{ "coverage": { "src/Util.hs": [null, null, null, 0, true, 1] } }' https://codecov.io/upload/v1?travis_job_id=$TRAVIS_BUILD_NUMBER&commit=$TRAVIS_COMMIT&branch=develop&travis_job_id=$TRAVIS_JOB_ID
