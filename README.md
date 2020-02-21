# BioShineR

[![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/codingene/bioshiner)](https://hub.docker.com/r/codingene/bioshiner/)
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/codingene/bioshiner)](https://cloud.docker.com/u/codingene/repository/docker/codingene/bioshiner/builds)
[![Docker Pulls](https://img.shields.io/docker/pulls/codingene/bioshiner)]((https://hub.docker.com/r/codingene/bioshiner/))

Containerize **Bio**conductor and **Shin**y with Dock**eR**

This serves as a base image to deploy a [R Shiny] application with [Shiny-Server] including some basic [Bioconductor] packages.

## Whats the need?
[Rocker-Project] is already have a very nice [rocker/shiny] on Debian, But few dependency are missing while installing few R and Bioconductor packages. 

Anyway this [codingene/bioshiner] made on top of [rocker/shiny] only and loosely follow the same [principles].

## Principles
* Image tags will represnt corresponding [Bioconductor relese versions]

	For example to use `Bioconductor 3.10`
	```
	docker pull codingene/bioshiner:3.10
	```
	
## All Tags
| image | Bioc-Version |
|-------|------|
| codingene/bioshiner:3.10 | Bioconductor:3.10 |

## Test
Clone this repository containing test app
```
git clone https://github.com/codingene/BioShineR
```

Run the app
```
docker run --rm -p 3838:3838 \
	-v ${PWD}/BioShineR/test/apps/biocmanager:/srv/shiny-server/ \
	-v /srv/shinylog/:/var/log/shiny-server/ \
	codingene/bioshiner:3.10
```
Open the app in browser: http://localhost:3838/

[R Shiny]: https://shiny.rstudio.com/
[Shiny-Server]: https://rstudio.com/products/shiny/shiny-server/
[Bioconductor]: https://www.bioconductor.org/
[Rocker-Project]: https://www.rocker-project.org/
[rocker/shiny]: https://hub.docker.com/r/rocker/shiny/
[codingene/bioshiner]: https://hub.docker.com/r/codingene/bioshiner/
[Bioconductor relese versions]: https://bioconductor.org/about/release-announcements/#release-versions

[Principles]: #principles
