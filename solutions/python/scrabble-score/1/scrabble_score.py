def score(word):
    total = 0
    for char in word.upper():
        if char in "AEIOULNRST": 
            total += 1
        if char in "DG": 
            total += 2
        if char in "BCMP":
            total += 3
        if char in "FHVWY":
            total += 4
        if char == "K":
            total += 5
        if char in "JX":
            total += 8
        if char in "QZ":
            total += 10
    
    return total
