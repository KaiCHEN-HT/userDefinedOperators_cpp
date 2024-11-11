// myfunctions.cpp
#include <iostream>
#include <cstring>

extern "C" {
    int add(int a, int b) {
        return a + b;
    }

    char* get_message() {
        const char* message = "Hello from C++!";
        return strdup(message);
    }

    void free_message(char* message) {
        free(message);
    }
}