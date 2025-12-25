CC = gcc
CFLAGS = -Wall -O2
LIBS = -lm

TARGET = file_generator
SRC = file_generator.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET) $(LIBS)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET) temperature_data.csv
