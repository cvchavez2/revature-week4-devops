FROM mcr.microsoft.com/dotnet/core/sdk as publish
WORKDIR /app
# COPY . /app 
COPY . .
RUN dotnet publish -c Release -o out DevopsCI.Client/DevopsCI.Client.csproj

FROM mcr.microsoft.com/dotnet/core/aspnet
WORKDIR /dist
COPY --from=publish /app/out /dist
# or COPY . .  take all the projects in current directory to the image environment where I am currently in
# ENV ASPNETCORE_URLS='http://*:5000'
CMD [ "dotnet", "DevopsCI.Client.dll" ]

