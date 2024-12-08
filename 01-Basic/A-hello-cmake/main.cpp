#include <iostream>
#include <vector>
class BinaryBuffer {
public:
    BinaryBuffer(std::vector<std::string> data)
        : data_(data) {}

    BinaryBuffer(BinaryBuffer&& other) noexcept
        : data_(std::move(other.data_)) {
    }

    
    void doSomeThing() {
        std::cout << "Doing something ssss data." << std::endl;
    }

private:
    std::vector<std::string> data_;
};

int main() {
    BinaryBuffer clientObjA(std::vector<std::string>{"0", "0"});
    BinaryBuffer clientObjB(std::move(clientObjA));
    clientObjA.doSomeThing(); // 访问
    // if (clientObjA.isValid()) {
    //     clientObjA.doSomeThing(); // 访问
    // } else {
    //     return 0; // 早退
    // }
    
    return 0;
}