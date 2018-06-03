#!/usr/bin/bash
/opt/app/aws-release-notes-rss/scrape.py | tee -a /var/log/cron.log 2>&1
/opt/app/buildone-forum-feed/forum-scrape.py | tee -a /var/log/cron.log 2>&1
/opt/app/crowdsupply-feed/scrape-browse.py | tee -a /var/log/cron.log 2>&1
/opt/app/google-plus-newsfeed/grab-plus-feed.py | tee -a /var/log/cron.log 2>&1
/opt/app/thingiverse-feed/thingiverse-bow.py | tee -a /var/log/cron.log 2>&1

