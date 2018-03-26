# To build the module run: "make mod"
# To clean the module run: "make clean"

# Paths, files
EXECUTABLE = app
SRCDIR = src
OBJDIR = build
INCDIR = includes
MODULES_INCDIR = ../module1/includes
_SRCS = $(shell find $(SRCDIR) -name *.cpp)
SRCS = $(notdir $(_SRCS))
_OBJS = $(basename $(SRCS))
OBJS = $(addsuffix .o, $(_OBJS))

# Files with paths
EXECUTABLEP = $(addprefix $(OBJDIR)/, $(EXECUTABLE))
OBJSP = $(addprefix $(OBJDIR)/, $(OBJS))
INCSP = $(shell find $(INCDIR) -name *.h)
MODULES_INCSP = $(shell find $(MODULES_INCDIR) -name *.h)

# Complier flags
LINK_FLAGS = -o
OUT_FLAG = -o
COMPILE_FLAGS = -c
GCC_COMPILER = g++

.PHONY : mod
mod : $(OBJSP)

$(OBJDIR)/%.o : $(SRCDIR)/%.cpp $(INCSP) $(MODULES_INCSP)
	$(GCC_COMPILER) $(COMPILE_FLAGS) $(OUT_FLAG) $@ $< -I $(INCDIR) -I $(MODULES_INCDIR)

.PHONY : clean
clean :
	rm $(OBJDIR)/*.o
