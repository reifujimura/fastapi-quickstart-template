# FastAPI QuickStart Template

This repository is web service template using FastAPI.

## Features

- Production level Dockerfile
- API tests using pytest
- VSCode
  - Remove Development
  - Debug

## Build container

Build production level container using gunicorn and uvicorn.

```sh
docker build . -t <your-app-container-name>:<tag>
```

## Run test

```sh
pytest
```
