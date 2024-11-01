FROM gcr.io/cloud-marketplace-tools/k8s/deployer_helm/onbuild

ENV KUBECTL_VERSION=v1.29.0
RUN apt-get update && apt-get install -y curl
RUN curl -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl" \
    && chmod +x kubectl \
    && mv kubectl /usr/local/bin/

