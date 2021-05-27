#include "module.c"

#include <assert.h>

void test_module_add(void)
{
    int result;

    result = module_add(5, 5);

    assert(result == 10);
}

void test_module_subtract(void)
{
    int result;

    result = module_subtract(20, 3);

    assert(result == 17);
}

void test_module_with_branch(void)
{
    int result;

    result = module_with_branch(1);

    assert(result == 1);

    result = module_with_branch(22);

    assert(result == 0);
}

int main(void)
{
    test_module_add();
    test_module_subtract();
    test_module_with_branch();

    return 0;
}
