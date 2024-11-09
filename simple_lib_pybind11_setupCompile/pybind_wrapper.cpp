#include <pybind11/pybind11.h>
#include "simple.cpp"

namespace py = pybind11;

PYBIND11_MODULE(simple_lib, m)  // 创建名为simple_lib的模块
{
    m.def("greet", & greet, "A function that greets someone", py::arg("name"));
}