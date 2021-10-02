FROM python:3.9

RUN apt-get update && \
    apt-get install -y protobuf-compiler

WORKDIR /aioatomapi

COPY requirements_test.txt ./

RUN pip3 install -r requirements_test.txt

CMD ["script/gen-protoc"]

LABEL \
    org.opencontainers.image.title="aioatomapi protobuf generator" \
    org.opencontainers.image.description="An image to help with Atoms aioatomapi protobuf generation" \
    org.opencontainers.image.vendor="Atom" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://atom.io" \
    org.opencontainers.image.source="https://github.com/atom/aioatomapi" \
    org.opencontainers.image.documentation="https://github.com/atom/aioatomapi/blob/main/README.md"
