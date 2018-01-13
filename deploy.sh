#!/bin/bash

unlink _lessons || rm -rf _lessons
cp -r /Users/till/Dropbox/EnglishLetics/_lessons .

mv _config.yml _config_bkp.yml
mv _config_trial.yml _config.yml
git add .
git commit -a -m "content update via deploy.sh"
git push


mv _config.yml _config_trial.yml
mv _config_bkp.yml _config.yml
jekyll b 
git add . 
git commit -a -m "content update via deploy.sh"
git push quyn


rm -rf _lessons
ln -s /Users/till/Dropbox/EnglishLetics/_lessons .
