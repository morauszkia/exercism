def abbreviate(words):
    words_list = words.replace("-", " ").split(" ")
    for i in range(len(words_list)):
        word = words_list[i]
        words_list[i] = "".join([char for char in word if char.isalpha()])

    return "".join(word[0].upper() for word in words_list if word != "")
