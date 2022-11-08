#!/bin/bash

spy style small
git pull origin main
git branch -m main
git add .
git status
read -p "commit: " commit
git commit -m "${commit}"
gitoken
git push origin main
