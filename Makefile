CXX		  := clang++
CXX_FLAGS := -Wall -Wextra -std=c++17 -g

BIN		:= bin
SRC		:= src
INCLUDE	:= -Iinclude -I$(SRC) -Iinclude/asio-1.18.0/include -Iinclude/olc_net
DEFINE  := -DASIO_STANDALONE

SERVER_EXECUTABLE	:= server
CLIENT_EXECUTABLE	:= client


all: $(BIN)/$(SERVER_EXECUTABLE) $(BIN)/$(CLIENT_EXECUTABLE)

run: $(BIN)/$(SERVER_EXECUTABLE)
	@clear
	@./$(BIN)/$(SERVER_EXECUTABLE)
	
run-client: $(BIN)/$(CLIENT_EXECUTABLE)
	@clear
	@./$(BIN)/$(CLIENT_EXECUTABLE)
	
$(BIN)/$(CLIENT_EXECUTABLE): $(SRC)/client/*.cpp
	$(CXX) $(CXX_FLAGS) $(DEFINE) $(INCLUDE) $^ -o $@

$(BIN)/$(SERVER_EXECUTABLE): $(SRC)/server/*.cpp
	$(CXX) $(CXX_FLAGS) $(DEFINE) $(INCLUDE) $^ -o $@

clean:
	@rm -rf $(BIN)/*
	@echo "Cleaned bin directory"