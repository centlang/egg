CENTC := centc

BUILD := build
RELEASE := $(BUILD)/release
DEBUG := $(BUILD)/debug

RELEASE_FLAGS := --release -O
DEBUG_FLAGS :=

$(RELEASE)/egg: $(RELEASE)
	$(CENTC) -o $@ src/main.cn $(RELEASE_FLAGS)

$(DEBUG)/egg: $(DEBUG)
	$(CENTC) -o $@ src/main.cn $(DEBUG_FLAGS)

release: $(RELEASE)/egg
debug: $(DEBUG)/egg

$(DEBUG) $(RELEASE):
	mkdir -p $@

all: release

clean:
	rm -rf $(BUILD)

.PHONY: release debug all clean
