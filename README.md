## Code Coverage example with gcov(r)

### About

Simple example creating a code coverage report.
Checkout the repo and run the `make` command.

```
$ make
# clean up
rm -f *.o  *.gcda *.gcno coverage.html module_tests
# compile with special flags
gcc -c -fprofile-arcs -ftest-coverage module_tests.c -o module_tests.o
# link with gcov
gcc module_tests.o -lgcov -o module_tests
# run tests
./module_tests
# run coverage report
gcovr -r . -s
------------------------------------------------------------------------------
                           GCC Code Coverage Report
Directory: .
------------------------------------------------------------------------------
File                                       Lines    Exec  Cover   Missing
------------------------------------------------------------------------------
module.c                                       8       8   100%
module_tests.c                                19      19   100%
------------------------------------------------------------------------------
TOTAL                                         27      27   100%
------------------------------------------------------------------------------
lines: 100.0% (27 out of 27)
branches: 60.0% (6 out of 10)
# create also a html report
gcovr -r . --html -o coverage.html
```

![Here should be a picture of the html report](https://github.com/mklntf/code_coverage_example/blob/main/data/screenshot.png?raw=true)

### Dependencies

- make
- gcc
- gcovr
