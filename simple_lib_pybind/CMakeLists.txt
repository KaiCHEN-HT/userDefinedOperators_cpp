
cmake_minimum_required(VERSION 3.10)
project(simple_library)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# find_package(PythonLibs REQUIRED)
find_package(Python3 3.10.14 EXACT REQUIRED COMPONENTS Interpreter Development)
find_package(pybind11 REQUIRED)

# include_directories(${PYTHON_INCLUDE_DIRS})

add_library(mymodule SHARED simple_pybind_wrapper.cpp)
# set_target_properties(mymodule PROPERTIES PREFIX "" SUFFIX ".pyd")

# target_link_libraries(mymodule ${PYTHON_LIBRARIES})
target_link_libraries(mymodule PRIVATE pybind11::pybind11)
