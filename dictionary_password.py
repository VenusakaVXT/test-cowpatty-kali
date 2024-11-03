import random
import string

def generatePassword(minLength):
    allCharacters = string.ascii_letters + string.digits + string.punctuation
    password = []

    password.append(random.choice(string.ascii_uppercase))
    password.append(random.choice(string.ascii_lowercase))
    password.append(random.choice(string.digits))
    password.append(random.choice(string.punctuation))

    for _ in range(minLength - 4):
        password.append(random.choice(allCharacters))

    random.shuffle(password)
    
    return "".join(password)

def generateDictionaryFile(minLength, numPasswords, fileName="passwords.txt"):
    with open(fileName, "w") as file:
        for _ in range(numPasswords):
            password = generatePassword(minLength)
            file.write(password + "\n")

    print("Create dictionary password file successfully...")

generateDictionaryFile(8, 100)