# To build the application run: "make"
# To clean the application run: "make clean"

# Paths, file names...
SRCDIR = src
BINDIR = bin
OBJ = app.o helper.o shell_cmd_caller.o
OBJS := $(addprefix $(BINDIR)/, $(OBJ))
OUTPUT_BIN = app

# Complier flags
LINK_FLAGS = -o
COMPILE_FLAGS = -c -o
GCC_COMPILER = gcc

$(BINDIR)/$(OUTPUT_BIN) : $(OBJS)
	$(GCC_COMPILER) $(LINK_FLAGS) $(BINDIR)/$(OUTPUT_BIN) $(OBJS)

$(BINDIR)/app.o : $(SRCDIR)/app.c
	$(GCC_COMPILER) $(COMPILE_FLAGS) $(BINDIR)/app.o $(SRCDIR)/app.c

$(BINDIR)/helper.o : $(SRCDIR)/helper.c $(SRCDIR)/helper.h
	$(GCC_COMPILER) $(COMPILE_FLAGS) $(BINDIR)/helper.o $(SRCDIR)/helper.c

$(BINDIR)/shell_cmd_caller.o : $(SRCDIR)/shell_cmd_caller.c $(SRCDIR)/shell_cmd_caller.h
	$(GCC_COMPILER) $(COMPILE_FLAGS) $(BINDIR)/shell_cmd_caller.o $(SRCDIR)/shell_cmd_caller.c

.PHONY : clean
clean :
	cd $(BINDIR) && rm *.o && rm $(OUTPUT_BIN)
