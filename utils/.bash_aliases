alias nginx.start='launchctl load ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist'
alias nginx.stop='launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist'
alias nginx.restart='nginx.stop && nginx.start'
alias php-fpm.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php55.plist"
alias php-fpm.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php55.plist"
alias php-fpm.restart='php-fpm.stop && php-fpm.start'
alias mysql.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.restart='mysql.stop && mysql.start'
alias nginx.logs.error='tail -250f /usr/local/etc/nginx/logs/error.log'
alias nginx.logs.access='tail -250f /usr/local/etc/nginx/logs/access.log'
alias nginx.logs.default.access='tail -250f /usr/local/etc/nginx/logs/default.access.log'
alias nginx.logs.default-ssl.access='tail -250f /usr/local/etc/nginx/logs/default-ssl.access.log'
alias nginx.logs.phpmyadmin.error='tail -250f /usr/local/etc/nginx/logs/phpmyadmin.error.log'
alias nginx.logs.phpmyadmin.access='tail -250f /usr/local/etc/nginx/logs/phpmyadmin.access.log'
alias mm='middleman'
alias mmb='bundle exec middleman b --verbose'
alias mms='bundle exec middleman s --verbose'
alias goapp=/Users/ybg/Projects/google-cloud-sdk/platform/google_appengine/goapp
alias oops='$(thefuck $(fc -ln -1))'
alias ppush='git push && ssh 46.101.221.201 docker exec -d caddy4hugo gitpulls'
# ------------------------------------
# Docker alias and function
# ------------------------------------
alias  dk='docker'
alias  dcm='docker-compose -f ~/Sites/Sites_common/docker-compose.yml'
alias  dkm='docker-machine'
alias  deval='eval $(docker-machine env default)'
alias  drmi='docker rmi'
alias  drmif='docker rmi -f'
alias  drm='docker rm'
alias  drmf='docker rm -f'
alias  di="docker images"   # Get images
alias  dl="docker ps -lq"   # Get latest container ID
alias  dp="docker ps"       # Get container process
alias  dx="docker exec -it" # Run specific app on running Container
alias  de='docker exec'
alias  dpa="docker ps  -a"   # Get process included stop container
alias  dpq="docker ps  -aq"  # Get process included stop container, Only display numeric IDs
alias  drd="docker run -dP"  # Run deamonized container, e.g., $dkd base /bin/echo hello
alias  dri="docker run -itP" # Run interactive container, e.g., $dki base /bin/bash
alias  dsr='dkillall && drmall'    # Kill and Remove all containers
alias  drv="docker run -itP -v /Users:/home" # Run with /Users volume as home
alias  dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'" # Get container IP
alias  dclean='docker rmi $(docker images -qf "dangling=true")' # remove dangling images
alias  dr-ls="curl -X GET http://localhub:5000/v1/search"
alias  dcmu='dcm up -d'
alias  dcml='dcm logs'
alias  dcmb='dcm build'

dbl()    { docker build -t=$1 .; } # Dockerfile build, e.g., $dbu tcnksm/test
drmall()    { docker rm   $(docker ps  -aq);  }   # Remove all containers
drmiall()   { docker rmi  $(docker ps  -aq);  }   # Remove all images
# drmeall()   { docker rmi  $(docker images | grep "^<none>" | awk '{  print $3 }') }
dstopall()  { docker stop $(docker ps  -aq);  }   # Stop   all containers
dkillall()  { docker kill $(docker ps  -aq);  }   # Kill   all containers
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; } # Show all alias related docker
