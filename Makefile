GO_VERSION := 1.19.1

setup:
  install-go
  init-go

install-go:
  wget "https://golang.org/dl/go$(GO_VERSION).linux-amd64.tar.gz"
  sudo tar -C /usr/local -xzf go$(GO_VERSION).linux-amd64.tar.gz
  rm go$(GO_VERSION).linux-amd64.tar.gz

init-go:
  echo 'export PATH=$$PATH:/usr/local/go/bin' >> $${HOME}/.bashrc
  echo 'export PATH=$$PATH:$${HOME}/go/bin' >> $${HOME}/.bashrc

build:
  go build -o api cmd/main.go