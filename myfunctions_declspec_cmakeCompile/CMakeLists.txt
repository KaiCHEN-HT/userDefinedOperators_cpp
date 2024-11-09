
# 添加可执行文件
# add_executable(HelloCMake myfunctions.cpp)

# CMakeLists.txt
cmake_minimum_required(VERSION 3.10)
project(DLLProject)

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

