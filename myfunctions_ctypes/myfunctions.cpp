// myfunctions.cpp
#include <iostream>
#include <cstring>

extern "C" {
    __declspec(dllexport) int add(int a, int b) {
        return a + b;
    }

    __declspec(dllexport) char* get_message() {
        // cout << "Hello from C++!" << endl;
        const char* message = "Hello from C++!";
        return strdup(message);
    }

    // 释放字符串的函数
    __declspec(dllexport) void free_message(char* message) {
        free(message);
    }
}