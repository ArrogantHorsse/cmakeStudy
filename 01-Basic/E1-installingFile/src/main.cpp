#include <iostream>
#include "Hello.h"

int main() {
    std::cout << "This is a cmake install instance" << std::endl;

    Hello hello;
    hello.printHello();
}