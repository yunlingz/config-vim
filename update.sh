#!/bin/bash

git add .
git commit -m "update at `date +'%Y/%m/%d %I:%M:%S%p'`"
git push -u origin main
