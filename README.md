u14golpls
=============

Shippable CI image for Go on Ubuntu 14.04 with commonly used services. Available versions are:

1. 1.1
2. 1.2
3. 1.3
4. 1.4
5. 1.5

**SERVICES**

1. elasticsearch 1.5
2. memcached 1.4
3. mongodb 3.0
4. mysql 5.6
5. postgres 9.4
6. rabbitmq 3.5
7. redis 3.0
8. selenium 2.45
9. sqllite 3

## How to use
You can use this image to run go builds on Shippable. Add build_image tag to your shippable.yml file and activate gvm in before_install section to run your build against the correct version of go.  Here's a sample YML file to get you going:

````
language: go
go:
  - 1.1
  - 1.2
  - 1.3
  - 1.4
  - 1.5

services:
  - elasticsearch 1.5
  - memcached 1.4
  - mongodb 3.0
  - mysql 5.6
  - postgres 9.4
  - rabbitmq 3.5
  - redis 3.0
  - selenium 2.45
  - sqllite 3

build_image: drydock/u14golpls:prod

before_install:
  - source $HOME/.gvm/scripts/gvm;
  - if [[ $SHIPPABLE_GO_VERSION == "tip" ]]; then gvm install tip; gvm use tip; fi
  - if [[ $SHIPPABLE_GO_VERSION == *release* ]]; then gvm install release; gvm use release; fi
  - if [[ $SHIPPABLE_GO_VERSION =~ [0-9].[0-9] ]]; then gvm install go$SHIPPABLE_GO_VERSION; gvm use go$SHIPPABLE_GO_VERSION; fi
  - export GOPATH=$SHIPPABLE_GOPATH
  - go get github.com/t-yuki/gocover-cobertura
  - go get github.com/onsi/gomega
  - go get github.com/onsi/ginkgo
  - go get code.google.com/p/go.tools/cmd/cover

install:
  - go get -d -v ./... && go build -v ./...

script:
  - go test -coverprofile=coverage.txt -covermode count ./

````
