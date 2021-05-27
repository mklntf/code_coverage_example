int module_add(short a, short b)
{
    return a + b;
}

int module_subtract(short a, short b)
{
    return a - b;
}

int module_with_branch(int option)
{
    if (option == 1)
        return 1;
    else
        return 0;
}
