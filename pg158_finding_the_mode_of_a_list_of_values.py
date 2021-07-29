fileName = input("Enter the filename: ")
f = open(fileName, 'r')

words = []
for line in f:
    for word in line.split():
        words.append(word.upper())
        
theDictionary = {}
for word in words:
    number = theDictionary.get(word, None)
    if number == None:
        theDictionary[word] = 1
    else:
        theDictionary[word] = number + 1

theMaximum = max(theDictionary.values())
for key in theDictionary:
    if theDictionary[key] == theMaximum:
        print("The mode is", key)
        break