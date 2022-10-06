# Varibales
CXX				:= g++
CXX_FLAGS := -std=c++17 -ggdb

BIN				:= bin
PUBLIC		:= public
SRC				:= src
INCLUDE		:= include

LIBRARIES :=
EXECUTABLE:= main

# Build Commands
.PHONY: all
all: $(BIN)/$(EXECUTABLE)


run: clean all
	clear
	./$(BIN)/$(EXECUTABLE)

$(BIN)/$(EXECUTABLE): $(SRC)/*.cpp main.cpp
	$(CXX) $(CXX_FLAGS) -I$(INCLUDE) $^ -o $@ $(LIBRARIES)


clean:
	-rm $(BIN)/*
