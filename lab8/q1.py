class Animal(object):
    def _init_(self):
        print("Hello from the Animal class constructor")
    pass
class Cat:
    def _init_(self, gender, breed):
        super()._init_()
        self.gender = gender
        self.breed = breed
class Rabbit:
    def _init_(self, gender, breed):
        super()._init_()
        self.gender = gender
        self.breed = breed

class Person:
    def _init_(self, name, age):
        super()._init_()
        self.name = name
        self.age = age

class Student(Person):
  def _init_(self, name, age, year):
    super()._init_(name)
    super()._init_(age)
    self.graduation_year = year

s1 = Student("John", 19, 2025)
print(s1.name)
print(s1.age)
print(s1.year)
c1 = Cat("Female","Persian")
print(c1.gender)
print(c1.breed)
r1 = Rabbit("Male", "Dutch Rabbit")