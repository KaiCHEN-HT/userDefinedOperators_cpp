// myfunctions.cpp
#include <iostream>
#include <cstring>

extern "C" {
    int add(int a, int b) {
        return a + b;
    }

    char* get_message() {
        // cout << "Hello from C++!" << endl;
        const char* message = "Hello from C++!";
        return strdup(message);
    }

    // 释放字符串的函数
    void free_message(char* message) {
        free(message);
    }
}