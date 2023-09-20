# -*- coding: utf-8 -*-
"""
Created on Mon Mar 20 12:10:25 2023

@author: KIIT
"""

class Vehicle:
    def __init__(self, max_speed, mileage):
        self.max_speed = max_speed
        self.mileage = mileage

    def display_info(self):
        print("Max speed:", self.max_speed, "Mileage:", self.mileage)


class Bus(Vehicle):
    def __init__(self, max_speed, mileage):
        super().__init__(max_speed, mileage)
        self.seating_capacity = 50

    def total_fare(self):
        fare = self.seating_capacity * 100
        if isinstance(self, Bus):
            fare *= 1.1
        print("Total fare:", fare)

v = Vehicle(120, 15)
v.display_info()  # Output: Max speed: 120 Mileage: 15

b = Bus(100, 12)
b.display_info()  # Output: Max speed: 100 Mileage: 12
b.total_fare()    # Output: Total fare: 5500.0 (50 * 100 * 1.1)

