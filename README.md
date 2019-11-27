# BioShineR
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

[R Shiny]: https://shiny.rstudio.com/
[Shiny-Server]: https://rstudio.com/products/shiny/shiny-server/
[Bioconductor]: https://www.bioconductor.org/
[Rocker-Project]: https://www.rocker-project.org/
[rocker/shiny]: https://hub.docker.com/r/rocker/shiny/
[codingene/bioshiner]: https://hub.docker.com/r/codingene/bioshiner/
[Bioconductor relese versions]: https://bioconductor.org/about/release-announcements/#release-versions

[Principles]: #principles
