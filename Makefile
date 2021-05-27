all: clean
	@echo "# compile with special flags"
	gcc -c -fprofile-arcs -ftest-coverage module_tests.c -o module_tests.o
	@echo "# link with gcov"
	gcc module_tests.o -lgcov -o module_tests
	@echo "# run tests"
	./module_tests
	@echo "# run coverage report"
	gcovr -r . -s
	@echo "# create also a html report"
	gcovr -r . --html -o coverage.html

simple: clean
	@echo "# compile with --coverage which should do the same"
	gcc -c --coverage module_tests.c -o module_tests.o
	@echo "# link with --coverage"
	gcc --coverage module_tests.o -o module_tests
	@echo "# run tests"
	./module_tests
	@echo "# run coverage report"
	gcovr -r . -s
	@echo "# create also a html report"
	gcovr -r . --html -o coverage.html

clean:
	@echo "# clean up"
	rm -f *.o  *.gcda *.gcno coverage.html module_tests

.PHONY: all simple clean
