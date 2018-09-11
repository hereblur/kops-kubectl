FROM alpine:latest

RUN apk add --no-cache curl

RUN curl -L https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl --output /bin/kubectl
RUN chmod +x /bin/kubectl


RUN curl -L https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64 --output /bin/kops
RUN chmod +x /bin/kops
