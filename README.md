# dotnet7-docker-build-with-arm64-test

## 개요

.Net 7.x 소스코드를 github actions에서 arm64 아키텍처 docker image로 만드는 중 아래와 같은 에러가 발생하였다.

- [에러 로그(Github Actions Log)](https://github.com/BaeKY/dotnet7-docker-build-with-arm64-test/actions/runs/7238013222/job/19718321962)

M2-pro를 탑재한 MacBook Pro에서는 build에 성공하였다. Github Actions에서만 동작하지 않음.

## 시도해 본것들

- [실패] docker image를 arm64용으로 바꿔보았다. 아래와 같은 Tag들을 Dockerfile에서 사용
  - [mcr.microsoft.com/dotnet/sdk](https://hub.docker.com/_/microsoft-dotnet-sdk/)
    - :7.0.404-1-bookworm-slim-arm64v8
  - [mcr.microsoft.com/dotnet/aspnet](https://hub.docker.com/_/microsoft-dotnet-aspnet/)
    - 7.0.14-bookworm-slim-arm64v8
