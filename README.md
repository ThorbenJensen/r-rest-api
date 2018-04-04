# README

## Author

Thorben Jensen

## Docker instructions

Build image:

`docker build -t plumber .`

Run container:

`docker run --rm -p 1234:8000 plumber`

Access API:

`curl http://localhost:1234/factorial?x=4`

