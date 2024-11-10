cmake_minimum_required(VERSION 3.4...3.18)
project(simple_library)

# 指定pybind11库提供的配置文件位置，不同系统不同
# 检查操作系统
if(WIN32)
    # 对于 Windows 系统
    set(PYBIND11_PATH "C:/Users/chenkai26/AppData/Local/miniconda3/envs/cfdsm/Lib/site-packages/pybind11;${CMAKE_PREFIX_PATH}")
elseif(UNIX AND NOT APPLE)
    # 对于 Linux 系统
    set(CMAKE_PREFIX_PATH "/home/chenkai26/anaconda3/envs/cpp_build/lib/python3.11/site-packages/pybind11/share/cmake/pybind11;${CMAKE_PREFIX_PATH}")
else()
    # 其他未知系统
    message(FATAL_ERROR "Unknown operating system")
endif()

find_package(pybind11 REQUIRED)  # 寻找pybind11

# 添加你的模块目标
pybind11_add_module(simple_library simple_pybind_wrapper.cpp)
