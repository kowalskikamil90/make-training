# To build the application run: "make all"
# To clean the application run: "make clean"

# Paths, files
EXECUTABLE = app
OBJDIR = build
MOD1_DIR = module1
MOD2_DIR = module2
MOD1_OBJS = $(shell find $(MOD1_DIR)/$(OBJDIR)/ -name *.o)
MOD2_OBJS = $(shell find $(MOD2_DIR)/$(OBJDIR)/ -name *.o)
EXECUTABLEP = $(addprefix $(OBJDIR)/, $(EXECUTABLE))

# Complier flags
OUT_FLAG = -o
GCC_COMPILER = g++

.PHONY: all

all : $(MOD1_OBJS) $(MOD2_OBJS)
	$(MAKE) -C $(MOD1_DIR) mod
	$(MAKE) -C $(MOD2_DIR) mod
	$(MAKE) -C . app
	echo "Processing -all- target finished.."

$(EXECUTABLE) : $(MOD1_OBJS) $(MOD2_OBJS)
	$(GCC_COMPILER) $(OUT_FLAG) $(EXECUTABLEP) $(MOD1_OBJS) $(MOD2_OBJS)

.PHONY : clean
clean :
	$(MAKE) -C $(MOD1_DIR) clean
	$(MAKE) -C $(MOD2_DIR) clean
	rm $(OBJDIR)/$(EXECUTABLE)
