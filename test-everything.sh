#!/bin/bash -xe

env | sort
which git
echo "Did you add references to subprojects into this one?"
if git diff $TRAVIS_COMMIT_RANGE | grep -iq myemsl ; then
  echo "yes"
else
  echo "no"
fi
