
# 添加可执行文件
# add_executable(HelloCMake myfunctions.cpp)

# CMakeLists.txt
cmake_minimum_required(VERSION 3.10)
project(DLLProject)

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

# 设置使用的C++标准
set(CMAKE_CXX_STANDARD 11)

# 如果想要生成动态库（DLL）
add_library(myfunctions SHARED myfunctions.cpp)

# 定义宏，用于导出DLL符号
target_compile_definitions(myfunctions PRIVATE EXPORTING_DLL)

# 在build目录下依次执行一下命令，完成cmake编译
# 编译过程调用g++
# cmake ..
# cmake --build . --config Release

