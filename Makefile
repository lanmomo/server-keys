# Input
SRC  = keys
KEY  = *.pub
KEYS = $(SRC)/$(KEY)

# Output
OUT  = build
NAME = authorized_keys
FILE = $(OUT)/$(NAME)

# Commands
MKDIR = mkdir
CAT   = cat
RM    = rm

# PHONY
.PHONY: all clean

# Default goal
all: clean $(OUT) $(FILE)

$(OUT):
	$(MKDIR) $(OUT)

$(FILE):
	$(CAT) $(KEYS) > $(FILE)

# Clean goal
clean:
	$(RM) -rf $(OUT)
