# Docker with R and Selenium Web Driver

This docker image contains a full R & RStudio stack, including a connection with
a Selenium docker image. As this enables all RStudio capabilities, as well
support deep and complex webscraping tasks.

Repository based on:

- [rocker/geospatial](https://hub.docker.com/r/rocker/geospatial): "Docker-based Geospatial toolkit for R, built on versioned Rocker images."

- [selenium/standalone-firefox](https://hub.docker.com/r/selenium/standalone-firefox/): A Selenium Grid Server on top of Firefox browser.

# Running

## 1. Clone the Repository

```bash
$ git clone https://github.com/bruno-pinheiro/docker_images.git
```

## 2. Start containers

We start going to the appropriate directory:

```bash
$ cd docker_images/rselenium
```

After this, we are ready to call the containers starter scripts.

We need to run the selenium container first, because the R container will
connect with it later.

```bash
bash docker_selenium_firefox.sh
bash docker_rocker_geo.sh
```

## 3. Start RStudio on your browser

As result the Selenium Server will be working on `localhost:4545`, which is
linked with the RStudio container, running on `localhost:8787`.

To open the RStudio application open your internet browser and go to
`localhost:8787`.
