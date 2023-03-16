FROM ubuntu
RUN apt-get update
RUN apt-get -y install wget
RUN apt-get -y install default-jdk
RUN wget https://github.com/zaproxy/zaproxy/releases/download/v2.11.1/ZAP_2.11.1_Linux.tar.gz
RUN mkdir zap
RUN tar -xvf ZAP_2.11.1_Linux.tar.gz
WORKDIR /ZAP_2.11.1
ENTRYPOINT ["./zap.sh", "-cmd", "-quickurl", "https://www.example.com", "-quickprogress", "-quickout", "../zap_report.html"]
