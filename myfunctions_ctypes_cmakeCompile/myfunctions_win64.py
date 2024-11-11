#!/usr/bin/env python
# -*- coding: UTF-8 -*-
#
# Copyright (c) 2024 Baidu.com, Inc. All Rights Reserved
#
"""
Authors: chenkai26(chenkai26@baidu.com)
Date:    2024/9/12
"""
from ctypes import WinDLL, c_int, c_char_p, CFUNCTYPE

# 加载DLL
# myfunctions_dll = ctypes.WinDLL('./myfunctions.dll')
myfunctions_dll = WinDLL('./build_win64/Release/myfunctions.dll')

# 封装 add 函数
add = myfunctions_dll.add
add.restype = c_int
add.argtypes = [c_int, c_int]

# 封装 get_message 函数
get_message = myfunctions_dll.get_message
get_message.restype = c_char_p  # 设置返回类型为 char*

# 封装 free_message 函数以释放内存
free_message = myfunctions_dll.free_message
free_message.argtypes = [c_char_p]  # 设置参数类型


if __name__ == '__main__':
    result = add(333, 40)
    print(f"333 + 40 = {result}")
    message = get_message()  # 获得消息并打印
    print(c_char_p(message).value.decode('utf-8'))
    # free_message(message)  # 释放内存
