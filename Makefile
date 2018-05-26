.PHONY: main
main:
	mkdir -p build
	cd build; ghdl -a ../*.vhdl
	cd build; ghdl -e test_dimmer
