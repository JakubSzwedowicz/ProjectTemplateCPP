#include <fmt/core.h>
#include "Calc/Calc.hpp"

int main()
{
    fmt::print("Hello World!\n");
    std::cout << Calc::Calc::templateAdd(10.0f, 5.5f) << std::endl;
    return 0;
}