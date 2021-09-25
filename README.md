# Linux_Docker
Docker image with Powershell Script execution

# Build the docker iamge 
you can first pull the Linux image so that you won't have to download it each time 
Docker pull ubuntu: latest
Then run the following command in the folder where the dockerfile and the powershell script are located 
docker build -f "Dockerfile" -t yousri:latest "."

The Hello.ps1 script creates a test.txt file on the same location as the Hello.ps1 which confirms its execution.
