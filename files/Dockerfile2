FROM alpine:3.12
RUN apk update && apk upgrade
RUN wget https://releases.hashicorp.com/terraform/0.12.28/terraform_0.12.28_linux_amd64.zip 
RUN unzip terraform_0.12.28_linux_amd64.zip 
RUN rm terraform_0.12.28_linux_amd64.zip 
RUN mv terraform /usr/local/bin/
RUN wget https://github.com/terraform-linters/tflint/releases/download/v0.16.2/tflint_linux_amd64.zip 
RUN unzip tflint_linux_amd64.zip 
RUN rm tflint_linux_amd64.zip
RUN mv tflint /usr/local/bin/
RUN apk add curl
CMD ["/bin/sh"]