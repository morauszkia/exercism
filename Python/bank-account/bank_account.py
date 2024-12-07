import threading


class BankAccount:
    def __init__(self):
        self.is_open = False
        self.lock = threading.Lock()

    def check_open_status(self, expected):
        if expected == "open" and not self.is_open:
            raise ValueError("account not open")
        if expected == "closed" and self.is_open:
            raise ValueError("account already open")

    def get_balance(self):
        with self.lock:
            self.check_open_status("open")
            return self.balance

    def open(self):
        with self.lock:
            self.check_open_status("closed")
            self.is_open = True
            self.balance = 0

    def deposit(self, amount):
        if amount < 0:
            raise ValueError("amount must be greater than 0")
        with self.lock:
            self.check_open_status("open")
            self.balance += amount

    def withdraw(self, amount):
        if amount < 0:
            raise ValueError("amount must be greater than 0")
        with self.lock:
            self.check_open_status("open")
            if amount > self.balance:
                raise ValueError("amount must be less than balance")
            self.balance -= amount

    def close(self):
        with self.lock:
            self.check_open_status("open")
            self.is_open = False
