import re


class Luhn:
    def __init__(self, card_num):
        self.numstring = re.sub(r"\s", "", card_num)[::-1]
        print(self.numstring)

    def valid(self):
        if len(self.numstring) < 2 or not self.numstring.isdigit():
            return False

        checksum = 0
        for i in range(len(self.numstring)):
            digit = int(self.numstring[i])
            if not i % 2:
                checksum += digit
            elif digit < 5:
                checksum += 2 * digit
            else:
                checksum += 2 * digit - 9

        return checksum % 10 == 0

