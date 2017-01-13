FROM alpine
RUN apk -Uuv add curl ca-certificates
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
ADD update.sh /bin/
RUN chmod +x /bin/update.sh
CMD /bin/update.sh
