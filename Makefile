.PHONY: main
main:
	mkdir -p build
	cd build; ghdl -a ../*.vhdl
	cd build; ghdl -e test_dimmer

.PHONY: run
run:
	build/test_dimmer --stop-time=1ms --vcd=output.vcd

.PHONY: view
view:
	gtkwave output.vcd

.PHONY: clean
clean:
	rm -rf build
