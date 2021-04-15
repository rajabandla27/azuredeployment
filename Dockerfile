FROM mcr.microsoft.com/dotnet/core/sdk:3.1-nanoserver-1903
WORKDIR /src
COPY ["webapp.csproj", ""]
RUN dotnet restore "./webapp.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "webapp.csproj" -c Release -o /app/build
