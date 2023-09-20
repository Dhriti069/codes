students = {}

for i in range(10):
    name = input("Enter student name: ")
    marks = int(input("Enter student marks: "))
    students[name] = marks

sorted_students = dict(sorted(students.items(), key=lambda item: item[1], reverse=True))

print("Name\tMarks")
for name, marks in sorted_students.items():
    print(f"{name}\t{marks}")
