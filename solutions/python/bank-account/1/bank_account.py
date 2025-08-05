class BankAccount:
    def __init__(self):
        self.is_open = False

    def get_balance(self):
        if self.is_open:
            return self.balance
        else:
            raise ValueError("account not open")

    def open(self):
        if not self.is_open:
            self.is_open = True
            self.balance = 0
        else:
            raise ValueError("account already open")

    def deposit(self, amount):
        if self.is_open:
            if amount < 0:
                raise ValueError("amount must be greater than 0")
            self.balance += amount
        else:
            raise ValueError("account not open")

    def withdraw(self, amount):
        if self.is_open:
            if amount < 0:
                raise ValueError("amount must be greater than 0")
            if amount > self.balance:
                raise ValueError("amount must be less than balance")

            self.balance -= amount
        else:
            raise ValueError("account not open")

    def close(self):
        if self.is_open:
            self.is_open = False
        else:
            raise ValueError("account not open")
