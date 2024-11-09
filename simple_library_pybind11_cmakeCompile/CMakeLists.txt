cmake_minimum_required(VERSION 3.4...3.18)
project(simple_library)

find_package(pybind11 REQUIRED)  # 寻找pybind11

# 添加你的模块目标
pybind11_add_module(simple_library simple_pybind_wrapper.cpp)
