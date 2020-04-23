GO = go
LDFLAGS = -ldflags "-s -w"

all: nmapperbot

nmapperbot:
	$(GO) build $(LDFLAGS)

.PHONY: install
install: nmapperbot
	mv nmapperbot /usr/local/bin

.PHONY: debug
debug:
	$(GO) build
	@./nmapperbot

.PHONY: clean
clean:
	rm -f nmapperbot
