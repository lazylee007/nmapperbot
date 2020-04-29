GO = go
FLAGS = -trimpath

all: build

.PHONY: build
build:
	$(GO) build $(FLAGS)

.PHONY: install
install: nmapperbot
	mv nmapperbot /usr/local/bin

.PHONY: clean
clean:
	rm -f nmapperbot
