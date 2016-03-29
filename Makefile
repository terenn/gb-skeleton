project = skeleton

default: all

all: clean
	mkdir -p build
	rgbasm -v -p 0xff -iinc/ -obuild/$(project).obj src/$(project).z80
	rgblink -p 0xff -mbuild/map.map -obuild/$(project).gb build/$(project).obj
	rgbfix -v -p 0xff build/$(project).gb

clean:
	rm -f build/*