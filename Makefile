HOSTNAME=terraform.local
NAMESPACE=local
NAME=google
BINARY=terraform-provider-${NAME}
VERSION=3.90.1
OS_ARCH=linux_amd64

default: install

install:
	mkdir -p ~/.terraform.d/plugins/${HOSTNAME}/${NAMESPACE}/${NAME}/${VERSION}/${OS_ARCH}
	cp ./provider/${BINARY} ~/.terraform.d/plugins/${HOSTNAME}/${NAMESPACE}/${NAME}/${VERSION}/${OS_ARCH}
