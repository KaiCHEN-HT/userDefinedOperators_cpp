cmake_minimum_required(VERSION 3.4...3.18)
project(simple_library)

# 指定pybind11库提供的配置文件位置，不同系统不同
set(CMAKE_PREFIX_PATH "/home/chenkai26/anaconda3/envs/cpp_build/lib/python3.11/site-packages/pybind11/share/cmake/pybind11;${CMAKE_PREFIX_PATH}")

find_package(pybind11 REQUIRED)  # 寻找pybind11

# 添加你的模块目标
pybind11_add_module(simple_library simple_pybind_wrapper.cpp)
