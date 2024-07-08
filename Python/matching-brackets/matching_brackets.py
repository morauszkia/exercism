pairs_dict = {
    "(": ")",
    "{": "}",
    "[": "]"
}


def is_paired(input_string):
    brackets_stack = []
    for char in input_string:
        if char in "([{":
            brackets_stack.append(char)
        elif char in ")]}":
            if len(brackets_stack) == 0:
                return False

            last = brackets_stack.pop()
            if char != pairs_dict[last]:
                return False

    return False if len(brackets_stack) else True
