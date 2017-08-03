# To build the application just run: "make"

# To clean the application run: "make clean"

SRCDIR = core/src
OBJ := app.o helper.o shell_cmd_caller.o
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

shell_cmd_caller.o : $(SRCDIR)/shell_cmd_caller.c $(SRCDIR)/shell_cmd_caller.h
	$(GCC_COMPILER) $(COMPILE_FLAGS) shell_cmd_caller.o $(SRCDIR)/shell_cmd_caller.c

.PHONY : clean
clean :
	rm $(OBJ)
	rm app
