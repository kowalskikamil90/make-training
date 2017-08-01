# To build application just run: "make"

# To clean the application run: "make clean"

SRCDIR = src
SRC := app.c
OBJ := app.o
LINK_FLAGS = -o
COMPILE_FLAGS = -c -o
OUTPUT_BIN = app
GCC_COMPILER = gcc

$(OUTPUT_BIN) : $(OBJ)
	$(GCC_COMPILER) $(LINK_FLAGS) $(OUTPUT_BIN) $(OBJ)

app.o : $(SRCDIR)/$(SRC)
	$(GCC_COMPILER) $(COMPILE_FLAGS) app.o $(SRCDIR)/$(SRC)

.PHONY : clean
clean :
	rm $(OBJ)
	rm app
