def print_words_starting_with_s(file):
  with open(file, "r") as f:
    for line in f:
      for word in line.split():
        if word[0].lower() == 's':
          print(word)
          
file = "text_file.txt"
print_words_starting_with_s(file)
