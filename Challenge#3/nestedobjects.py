def getKey(obj: dict):
    keys = list(obj)
    if len(keys) != 1:
        raise Exception('either multiple keys or empty dict found')
    else:
        return keys[0]

def getKeyforNestedObject(obj: dict, key , isFound = False):
    if type(obj) is not dict and not isFound:
        return None
      
    if (isFound or (key in obj.keys())) :
        if type(obj[key]) is dict:
            return getKeyforNestedObject(obj[key], getKey(obj[key]), True)
        else:
            return obj[getKey(obj)]
    else:
        nestedKey = getKey(obj)
        return getKeyforNestedObject(obj[nestedKey], key, False)
        
if __name__ == '__main__':
    obj1 = input("Enter your value for obj1: ")
    obj2 = input("Enter your value for obj2: ")
    obj3 = input("Enter your value for obj3: ")
    obj4 = input("Enter your value for obj4: ")
    obj = {obj1: {obj2: {obj3: obj4}}}
    key1 = input("Enter the key: ")
    value = getKeyforNestedObject(obj, key1)
    print(value)
