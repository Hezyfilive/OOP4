FROM mcr.microsoft.com/dotnet/runtime:7.0 AS base
WORKDIR /app

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY ["OOP4.5/OOP4.5.csproj", "OOP4.5/"]
RUN dotnet restore "OOP4.5/OOP4.5.csproj"
COPY . .
WORKDIR "/src/OOP4.5"
RUN dotnet build "OOP4.5.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "OOP4.5.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "OOP4.5.dll"]
