FROM mcr.microsoft.com/dotnet/aspnet:6.0


WORKDIR /app

RUN dotnet restore
RUN dotnet publish -c Release -o out



ENTRYPOINT [ "dotnet", "docker-dotnet-api.dll" ]
