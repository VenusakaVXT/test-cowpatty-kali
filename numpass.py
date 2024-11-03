import random
import string

def generatePassword(length = 8):
    characters = string.digits
    password = "".join(random.choice(characters) for _ in range(length))
    return password

def generateDictionaryFile(length, rows, fileName="numpass.txt"):
    with open(fileName, "w") as file:
        for _ in range(rows):
            password = generatePassword(length)
            file.write(password + "\n")

generateDictionaryFile(8, 100)