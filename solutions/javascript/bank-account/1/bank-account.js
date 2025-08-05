export class BankAccount {
  constructor() {
    this._open = false;
    this._balance = 0;
  }

  open() {
    if (!this._open) {
      this._open = true;
      this._balance = 0;
    } else {
      throw new ValueError();
    }
  }

  close() {
    if (this._open) {
      this._open = false;
    } else {
      throw new ValueError();
    }
  }

  deposit(amount) {
    if (this._open && amount >= 0) {
      this._balance += amount;
    } else {
      throw new ValueError();
    }
  }

  withdraw(amount) {
    if (this._open && amount <= this._balance && amount >= 0) {
      this._balance -= amount;
    } else {
      throw new ValueError();
    }
  }

  get balance() {
    if (this._open) {
      return this._balance;
    } else {
      throw new ValueError();
    }
  }
}

export class ValueError extends Error {
  constructor() {
    super("Bank account error");
  }
}
