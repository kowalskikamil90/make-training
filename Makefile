# To build application just run: "make"

# To clean the application run: "make clean"

SRCDIR = src
OBJ := app.o helper.o
LINK_FLAGS = -o
COMPILE_FLAGS = -c -o
OUTPUT_BIN = app
GCC_COMPILER = gcc

$(OUTPUT_BIN) : $(OBJ)
	$(GCC_COMPILER) $(LINK_FLAGS) $(OUTPUT_BIN) $(OBJ)

app.o : $(SRCDIR)/app.c
	$(GCC_COMPILER) $(COMPILE_FLAGS) app.o $(SRCDIR)/app.c

helper.o : $(SRCDIR)/helper.c $(SRCDIR)/helper.h
	$(GCC_COMPILER) $(COMPILE_FLAGS) helper.o $(SRCDIR)/helper.c

.PHONY : clean
clean :
	rm $(OBJ)
	rm app
