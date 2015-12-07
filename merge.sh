#!/bin/bash

git init 
touch main.py
git add main.py
git commit -m 'base'

sleep 1

#feature
git checkout -b feature
touch feature.py
git add feature.py
git commit -m 'feature: working on'

sleep 1

#bugfix
git checkout master
echo '#bugfix' > main.py
git commit -a -m 'bugfix'

sleep 1

#back to feature
git checkout feature
echo 'feature xyz' > feature.py
git commit -a -m 'feature: done'

sleep 1

#back to master (assuming that it is already updated)
git checkout master
git merge feature
