PROFILES = $(wildcard profiles/*.yml)

.PHONY: all clean, install

all: $(patsubst profiles/%.yml,%,$(PROFILES))

install:
	cp $(wildcard build/*.json) $(HOME)/.config/karabiner/assets/complex_modifications/

clean: build
	rm -rf build

%: profiles/%.yml
	@[ -d build ] || mkdir -p build
	j2 templates/base.j2 $< | yq . >| build/qmk-$@.json
