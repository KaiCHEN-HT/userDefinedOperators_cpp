#!/usr/bin/env python
# -*- coding: UTF-8 -*-
#
# Copyright (c) 2024 Baidu.com, Inc. All Rights Reserved
#
"""
Authors: chenkai26(chenkai26@baidu.com)
Date:    2024/9/12
"""
# myfunctions.py
from ctypes import cdll, c_int, c_char_p, CFUNCTYPE

# 加载共享库
lib = cdll.LoadLibrary('./libmyfunctions.so')

# 封装add函数
add = lib.add
add.argtypes = [c_int, c_int]
add.restype = c_int

# 封装get_message函数
get_message = lib.get_message
get_message.restype = c_char_p

# 封装free_message函数
free_message = lib.free_message
free_message.argtypes = [c_char_p]

# 测试函数
if __name__ == '__main__':
    result = add(3, 4)
    print(f"3 + 4 = {result}")

    msg_ptr = get_message()
    message = msg_ptr.decode('utf-8')
    print(f"Message from C++: {message}")

    # free_message(msg_ptr)