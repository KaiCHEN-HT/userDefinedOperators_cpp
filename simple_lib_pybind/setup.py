#!/usr/bin/env python
# -*- coding: UTF-8 -*-
#
# Copyright (c) 2024 Baidu.com, Inc. All Rights Reserved
#
"""
Authors: chenkai26(chenkai26@baidu.com)
Date:    2024/11/1
"""
from setuptools import setup, Extension
from pybind11.setup_helpers import Pybind11Extension, build_ext

ext_modules = [Pybind11Extension("simple_lib", ["pybind_wrapper.cpp"],),]  # 模块名，源文件列表
setup(name="simple_lib",
      version="0.0.1",
      author="Kai Chen",
      author_email="chenkai26@baidu.com",
      description="A simple example using pybind11",
      ext_modules=ext_modules,
      cmdclass={"build_ext": build_ext},
      )