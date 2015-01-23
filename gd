#!/usr/bin/env bash
branch=$1
if [ -z $branch ]; then
    echo "no branch found"
    exit
fi
git branch -D $branch
git push origin :$branch
echo "done"
