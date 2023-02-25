#!/bin/bash

installGolang() {
	echo "Which version of golang would you like to install?"
	read -re golangVersion
	curl https://dl.google.com/go/go"$golangVersion".linux-amd64.tar.gz -o /tmp/go"$golangVersion".linux-amd64.tar.gz
	sudo tar -C /usr/local -xzvf /tmp/go"$golangVersion".linux-amd64.tar.gz
	mkdir "${HOME}"/.go
	export enableGOLANG="y"
}

# Golang vars
if [ -f /usr/local/go ]; then
	export GOPATH="$HOME"/.go
	export GOROOT=/usr/local/go
	export GOARCH=amd64
	export GOOS=linux
	export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:$PATH
fi