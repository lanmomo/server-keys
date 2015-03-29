# Input
K_SRC   = keys
K_PTTRN = *.pub
K_FILES = $(K_SRC)/$(K_PTTRN)
S_SRC   = steam
S_PTTRN = *.id
S_FILES = $(S_SRC)/$(S_PTTRN)

# Output
OUT    = build
K_NAME = authorized_keys
K_FILE = $(OUT)/$(K_NAME)
S_NAME = steam_ids
S_FILE = $(OUT)/$(S_NAME)

# Commands
MKDIR = mkdir
CAT   = cat
RM    = rm

# PHONY
.PHONY: all clean

# Default goal
all: clean $(OUT) $(K_FILE) $(S_FILE)

$(OUT):
	$(MKDIR) $(OUT)

$(K_FILE):
	$(CAT) $(K_FILES) > $(K_FILE)

$(S_FILE):
	$(CAT) $(S_FILES) > $(S_FILE)

# Clean goal
clean:
	$(RM) -rf $(OUT)
