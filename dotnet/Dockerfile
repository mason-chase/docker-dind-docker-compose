FROM azihub/docker-dind-dc:19 
RUN wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN rm packages-microsoft-prod.deb
RUN apt-get update; \
  apt-get install -y apt-transport-https && \
  apt-get update
RUN uname -a
RUN apt-get install -y dotnet-sdk-5.0
RUN apt-get install aspnetcore-runtime-5.0 -y