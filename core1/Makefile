# To build the application run: "make all"
# To clean the application run: "make clean"

# Paths, files
EXECUTABLE = app
SRCDIR = src
OBJDIR = build
INCDIR = includes
_SRCS = $(shell find $(SRCDIR) -name *.cpp)
SRCS = $(notdir $(_SRCS))
_OBJS = $(basename $(SRCS))
OBJS = $(addsuffix .o, $(_OBJS))

# Files with paths
EXECUTABLEP = $(addprefix $(OBJDIR)/, $(EXECUTABLE))
OBJSP = $(addprefix $(OBJDIR)/, $(OBJS))
INCSP = $(shell find $(INCDIR) -name *.h)

# Complier flags
LINK_FLAGS = -o
OUT_FLAG = -o
COMPILE_FLAGS = -c
GCC_COMPILER = g++
INC_HEADERS = -I $(INCDIR)

.PHONY: all
all : $(EXECUTABLEP)
	echo "Processing -all- target finished.."

$(EXECUTABLEP) : $(OBJSP)
	$(GCC_COMPILER) $(LINK_FLAGS) $(EXECUTABLEP) $(OBJSP)

$(OBJDIR)/%.o : $(SRCDIR)/%.cpp $(INCSP)
	echo $<
	$(GCC_COMPILER) $(COMPILE_FLAGS) $(OUT_FLAG) $@ $< $(INC_HEADERS)

.PHONY : clean
clean :
	rm -Rf $(OBJDIR)/*

