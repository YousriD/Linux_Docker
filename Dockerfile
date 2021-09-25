##################################################
# My Docker file.                                #
# Author : Yousri Dardouri                       #
# Date : 25-SEP-2021                             #
##################################################

# Provide the base image for Icon Builds
FROM ubuntu:latest

LABEL Description="New Docker Image"\ dockerfile_version="1.0.0"

##################################################
# STEP 1: Install the needed libraries for the OS.
# This build will be slower as clean-Up is done
# at the end so the image is smaller.
##################################################

FROM ubuntu:latest

##################################################
# STEP 3: add html page from local folder
##################################################
COPY Hello.ps1 /


# Update the list of packages
RUN apt-get update
# Install pre-requisite packages.
RUN apt-get install -y wget apt-transport-https software-properties-common
# Download the Microsoft repository GPG keys
RUN wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb
# Register the Microsoft repository GPG keys
RUN dpkg -i packages-microsoft-prod.deb
# Update the list of packages after we added packages.microsoft.com
RUN apt-get update
# Install PowerShell
RUN apt-get install -y powershell
# Run PowerShell script Hello.ps1
RUN pwsh Hello.ps1


