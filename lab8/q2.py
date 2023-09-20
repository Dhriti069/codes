class Student:
    def __init__(self, name, id):
        self.name = name
        self.id = id
        #print(self.name)
class Lecturer:
    def __init__(self, name, department):
        self.name = name
        self.department = department
        
        
class PersonAddress(Student, Lecturer):
    def __init__(self, name, id, department, address):
        Student.__init__(self, name, id)
        Lecturer.__init__(self, name, department)
        self.address = address
        print(self.name)

c = Student("dhriti",69)
l = Lecturer("srijyotee", "it")
p = PersonAddress("dhriti", "4566","it","xye" )

