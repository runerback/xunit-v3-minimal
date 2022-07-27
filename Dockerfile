# `docker build -f Dockerfile -t deploy-test:latest . --network=host`

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY . .
RUN dotnet restore /property:Configuration=Release --configfile ./nuget.config
RUN ls -R /src/src/**/*.csproj | { while read -r project; do dotnet build $project --no-restore -c Release /property:WarningLevel=1 -v q; done }
RUN ls -R /src/src/**/*.csproj | { while read -r project; do dotnet run --project $project --no-build -c Release; code=$?; if [ "$code" != "0" ]; then echo $code & exit 1; fi done }
CMD ["dotnet", "--info"]