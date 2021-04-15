FROM Microsoft/aspnetcore-build:2.0
WORKDIR /app
COPY . .
RUN dotnet build -c Release
ENTRYPOINT ["DOTNET","RUN"]
