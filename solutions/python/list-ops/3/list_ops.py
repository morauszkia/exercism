def append(list1, list2):
    return list1 + [] if not list2 else list1 + [list2[0]] + append([], list2[1:])


def concat(lists):
    return [] if not lists else lists[0] + concat(lists[1:])


def filter(function, list):
    if not list:
        return []
    if not function(list[0]):
        return filter(function, list[1:])
    return [list[0]] + filter(function, list[1:])


def length(list):
    return 0 if not list else 1 + length(list[1:])
    

def map(function, list):
    return [] if not list else [function(list[0])] + map(function, list[1:])


def foldl(function, list, initial):
    return initial if not list else foldl(function, list[1:], function(initial, list[0]))


def foldr(function, list, initial):
    return foldl(function, reverse(list), initial)


def reverse(list):
    return [] if not list else reverse(list[1:]) + [list[0]]
