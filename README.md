# Sites_common
Common files between sites: Docker stuff, static, themes...
Hosting two (maybe more in the future) sites with common configuration. These are the common parts: Docker stuff and themes

To build:
dcmu
See aliases in utils/.bash_aliases
Perform docker-compose according to the docker-compose.yml file in ~/Sites/Sites_common.
docker_caddy/Dockerfile is the key player. Builds Alpine Linux docker container with Caddy server. Caddyfile does the run time work of git pulling in the sites from levpoem.co.il and heartbt.co.il

Since we are serving assets from Cloudflare, to prepare letsencrypt certificates, 
Use https://github.com/kappataumu/letsencrypt-cloudflare-hook

