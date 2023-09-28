# npm-hang-test 😩 #

[<img src="https://github.com/felddy/npm-hang-test/actions/workflows/build.yml/badge.svg" width="512">](https://github.com/felddy/npm-hang-test/actions/workflows/build.yml)

Investigating why the command `npm` hangs in the [offical NodeJS images](https://hub.docker.com/_/node) when run in GitHub Actions.

Daily builds of my [FoundryVTT Docker repo](https://github.com/felddy/foundryvtt-docker) started failing between daily builds:
- `2023-09-18`: ✅ https://github.com/felddy/foundryvtt-docker/actions/runs/6221059494
- `2023-09-19`: ❌ https://github.com/felddy/foundryvtt-docker/actions/runs/6234099414

The build of the `linux/s390x` image started hanging when running `npm install`.  

This repository runs a simple [GitHub Action workflow](https://github.com/felddy/npm-hang-test/actions/workflows/build.yml) that runs `npm -v` during a Docker image build for several architectures and Linux distributions.

Possible culprits:
- https://github.com/actions/runner/actions
- https://github.com/nodejs/docker-node
- https://github.com/qemu/qemu
- https://github.com/docker/buildx

Please see the [open issues](https://github.com/felddy/npm-hang-test/issues) for the latest investigation status.