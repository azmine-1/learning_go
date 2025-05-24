.DEFAULT_GOAL := build 
BINARY_NAME = app 
SRC_DIR = ch1
.PHONY: build clean run 

fmt: 
	go fmt $(BINARY_NAME) $(SRC_DIR)/*.go

vet: fmt 
	go vet ch1 $(BINARY_NAME) $(SRC_DIR)/*.go 
build: 
	go build -o $(BINARY_NAME) $(SRC_DIR)/*.go
run: build 
	./$(BINARY_NAME)

clean: 
	 rm -f $(BINARY_NAME)