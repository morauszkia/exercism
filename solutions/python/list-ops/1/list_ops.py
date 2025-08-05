def append(list1, list2):
    return list1 + [] if len(list2) == 0 else list1 + [list2[0]] + append([], list2[1:])


def concat(lists):
    return [] if len(lists) == 0 else lists[0] + concat(lists[1:])


def filter(function, list):
    if len(list) == 0:
        return []
    elif not function(list[0]):
        return filter(function, list[1:])
    else:
        return [list[0]] + filter(function, list[1:])


def length(list):
    return 0 if len(list) == 0 else 1 + length(list[1:])
    

def map(function, list):
    return [] if len(list) == 0 else [function(list[0])] + map(function, list[1:])


def foldl(function, list, initial):
    result = initial
    return result if len(list) == 0 else foldl(function, list[1:], function(result, list[0]))


def foldr(function, list, initial):
    return foldl(function, reverse(list), initial)


def reverse(list):
    return [] if len(list) == 0 else reverse(list[1:]) + [list[0]]
