#include <iostream>
#include "Test1.h"
#include "Test2.h"

int main() {
    std::cout << "This is a cmake install instance" << std::endl;

    Test1 test1;
    test1.printTest1();
    Test2 test2;
    test2.printTest2();
}