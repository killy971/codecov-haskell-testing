#!/bin/sh

curl -X POST -H 'Content-Type: application/json' -d '{ "coverage": { "src/Util.hs": [null, null, null, 0, true, 1] } }' https://codecov.io/upload/v1?token=dbd3e4a7-86e2-4537-b607-142bf46d7766&commit=$TRAVIS_COMMIT&branch=develop&travis_job_id=$TRAVIS_JOB_ID
