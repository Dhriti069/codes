# -*- coding: utf-8 -*-
"""
Created on Mon Mar 20 12:08:43 2023

@author: KIIT
"""

class Counter:
    def __init__(self):
        self.value = 0

    def increment(self):
        self.value += 1

    def clear(self):
        self.value = 0

    def disp_value(self):
        print("Counter value:", self.value)


class DecrementingCounter(Counter):
    def __init__(self):
        super().__init__()

    def decrement(self):
        self.value -= 1

    def disp_value(self):
        print("Decrementing counter value:", self.value)

c = Counter()
c.increment()
c.increment()
c.disp_value()  # Output: Counter value: 2
c.clear()
c.disp_value()  # Output: Counter value: 0

dc = DecrementingCounter()
dc.increment()
dc.increment()
dc.disp_value()  # Output: Decrementing counter value: 2
dc.decrement()
dc.disp_value()  # Output: Decrementing counter value: 1
dc.clear()
dc.disp_value()  # Output: Decrementing counter value: 0
