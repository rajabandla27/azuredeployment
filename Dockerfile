FROM microsoft/aspnetcore-build:3.1

WORKDIR /app

COPY . .

RUN dotnet build -c Release

ENTRYPOINT ["dotnet", "run", "--no-launch-profile" ]
