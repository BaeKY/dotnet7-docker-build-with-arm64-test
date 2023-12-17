FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS base

WORKDIR /app

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

WORKDIR /src
COPY . .
RUN dotnet restore ./DotnetArm64DockerBuildTest.sln

WORKDIR /src/WeatherAPI

RUN dotnet build "WeatherAPI.csproj" -c Release -o /app/build

FROM build as pubilsh
RUN dotnet publish "WeatherAPI.csproj" -c Release -o /app/publish

FROM base as final
WORKDIR /app
COPY --from=pubilsh /app/publish .

ENTRYPOINT ["dotnet", "WeatherAPI.dll"]