FROM mcr.microsoft.com/dotnet/core/sdk
WORKDIR /app
COPY . /app 
# or COPY . .  take all the projects in current directory to the image environment where I am currently in
# ENV ASPNETCORE_URLS='http://*:5000'
CMD [ "dotnet", "run", "-p", "DevopsCI.Client/DevopsCI.Client.csproj" ]