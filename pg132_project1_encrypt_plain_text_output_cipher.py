plainText = input("Enter the message to be encrypted: ")
distance = int(input("Enter the distance value: "))
code = ""
for ch in plainText:
    ordValue = (ord(ch))
    cipherValue = ordValue + distance
    if cipherValue > ord('z'):
        cipherValue = (ord('a')) + distance - \
                      (ord('z') - ordValue + 1)
    code +=  chr(cipherValue)
print(code)
