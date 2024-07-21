print("hello world")

print("Enter your shopping list (one item per line, enter an empty line to finish):")
var inputList = ""
while let line = readLine(), !line.isEmpty {
    inputList += line + "\n"
}

print(inputList)