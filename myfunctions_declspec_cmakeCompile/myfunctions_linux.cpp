#include <Python.h>
#include <cstring>

extern "C" {
    int add(int a, int b);
    char* get_message();
    void free_message(char* message);
}

// 包装 add 函数的 Python C API 函数
static PyObject* py_add(PyObject* self, PyObject* args) {
    int a, b;
    if (!PyArg_ParseTuple(args, "ii", &a, &b))
        return nullptr;
    return PyLong_FromLong(add(a, b));
}

// 包装 get_message 函数的 Python C API 函数
static PyObject* py_get_message(PyObject* self, PyObject* args) {
    char* message = get_message();
    if (!message)
        return nullptr;
    PyObject* result = PyUnicode_FromString(message);
    free_message(message); // 释放 strdup 分配的内存
    return result;
}

// 方法表
static PyMethodDef MyFunctionsMethods[] = {
    {"add", py_add, METH_VARARGS, "Add two numbers"},
    {"get_message", py_get_message, METH_NOARGS, "Get a message from C++"},
    {nullptr, nullptr, 0, nullptr}  // Sentinel
};

// 模块定义
static struct PyModuleDef myfunctionsmodule = {
    PyModuleDef_HEAD_INIT,
    "myfunctions",   // 模块名
    nullptr,         // 模块文档
    -1,              // 模块大小 (-1 表示模块保持全局状态)
    MyFunctionsMethods
};

// 初始化函数
PyMODINIT_FUNC PyInit_myfunctions(void) {
    return PyModule_Create(&myfunctionsmodule);
}

// 如果你的C++代码在同一个文件中，你可以直接包含它们的实现。
// 如果它们在不同的文件中，确保链接这些文件生成模块。