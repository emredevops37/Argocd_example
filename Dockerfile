FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
COPY sectigo_r46_crt /usr/local/share/ca-certificates/sectigo_r46.crt
RUN apt-get update && \
    apt-get install -y curl telnet ca-certificates && \
    rm -rf /var/lib/apt/lists/* && update-ca-certificates
