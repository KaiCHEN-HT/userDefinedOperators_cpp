#!/usr/bin/env python
# -*- coding: UTF-8 -*-
#
# Copyright (c) 2024 Baidu.com, Inc. All Rights Reserved
#
"""
Authors: chenkai26(chenkai26@baidu.com)
Date:    2024/9/12
"""
import ctypes

# 加载DLL
# myfunctions_dll = ctypes.WinDLL('./myfunctions.dll')
myfunctions_dll = ctypes.WinDLL('./build/Release/myfunctions.dll')

# 调用 add 函数
add = myfunctions_dll.add
add.restype = ctypes.c_int
add.argtypes = [ctypes.c_int, ctypes.c_int]
result = add(333, 40)
print(f"3 + 40 = {result}")

# 调用 get_message 函数
get_message = myfunctions_dll.get_message
get_message.restype = ctypes.c_char_p  # 设置返回类型为 char*
message = get_message()  # 获得消息并打印
print(ctypes.c_char_p(message).value.decode('utf-8'))

# 调用 free_message 函数以释放内存
free_message = myfunctions_dll.free_message
free_message.argtypes = [ctypes.c_char_p]  # 设置参数类型
free_message(message)  # 释放内存
