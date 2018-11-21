#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Student name: INSERT NAME HERE
# Student ID: INSERT ID HERE
# Date: 2018-11-21
# Exam for B8IT105 Programming for Big Data
# Lecturer: Darren Redmond
###############################################################################


class ClassName(object):

    def __init__(self):
        self.public_variable = 0
        self.__private_variable = 0

    def method1(self):
        return 0

    def method2(self):
        return 0

# Code under here will only run when we run this file.
# This stops it running when the tests file is run


if __name__ == '__main__':
    my_object = ClassName()




###############################################################################
# Sample code is below here. Delete before submitting
###############################################################################

# Example of map
a = [1, 2, 3, 4]
b = [17, 12, 11, 10]
c = [-1, -4, 5, 9]
result = map(lambda x, y: x+y, a, b)
#
print(list(result))

# Example of filter
fib = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
result = filter(lambda x: x % 2, fib)
print(list(result))

# Example of reduce
# Note if you're using python3 (which we are) and a reduce function you need
# to import reduce from functools. Best practise is include import at top of
# code with all the other imports

from functools import reduce
result = reduce(lambda x, y: x+y, [47, 11, 42, 13])
print(result)

# List comprehension is similar but different format.

# Example of a map
celsius = [10, 20, 30]
fahrenheit = [(float()/5*x + 32) for x in celsius]

# Example of a filter
pythagorean_triples = [(x, y, z) for x in range(1,30) for y in
                       range(x,30) for z in range(y,30) if x**2 + y**2 == z**2]

# Example of a reduce
numbers = list(range(10))
diff = sum([numbers[0]] + [-x for x in numbers[1:]])
