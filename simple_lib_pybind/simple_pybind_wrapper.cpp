#include <pybind11/pybind11.h>
#include <string>

// 定义greet函数
std::string greet(const std::string &name)
{
    return "Hello, " + name + "!";
}

namespace py = pybind11;

// 创建 Python 模块
PYBIND11_MODULE(simple_lib, m)  // 注意模块名需要与编译出的动态库名一致
{
    // 定义模块中的函数
    m.def("greet", &greet, "A function that greets someone", py::arg("name"));
}