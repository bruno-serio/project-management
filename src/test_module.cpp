#include "../include/test_module.h"

TestClass::TestClass() : num(0) {}
TestClass::TestClass(int x) : num(x) {}
int TestClass::getNum() const { return num; }
