"""Functions to help exchange money

Module contains following functions:

exchange_money: Calculates exchanged value of budget
get_change: Calculates remaining money after exchange
get_value_of_bills: Calculates total value of specified amount of bills
get_number_of_bills: Calculates how many bills of given denomination fit into given budget
get_leftover_of_bills: Calculates remainder after exchange
exchangeable_value: Given exchange rate, spread and wished type of bills calculates exchanged amount

"""

def exchange_money(budget, exchange_rate):
    """

    :param budget: float - amount of money you are planning to exchange.
    :param exchange_rate: float - unit value of the foreign currency.
    :return: float - exchanged value of the foreign currency you can receive.
    """

    return budget / exchange_rate


def get_change(budget, exchanging_value):
    """

    :param budget: float - amount of money you own.
    :param exchanging_value: float - amount of your money you want to exchange now.
    :return: float - amount left of your starting currency after exchanging.
    """

    return budget - exchanging_value


def get_value_of_bills(denomination, number_of_bills):
    """

    :param denomination: int - the value of a bill.
    :param number_of_bills: int - amount of bills you received.
    :return: int - total value of bills you now have.
    """

    return denomination * number_of_bills


def get_number_of_bills(budget, denomination):
    """

    :param budget: float - the amount of money you are planning to exchange.
    :param denomination: int - the value of a single bill.
    :return: int - number of bills after exchanging all your money.
    """

    return budget // denomination


def get_leftover_of_bills(budget, denomination):
    """

    :param budget: float - the amount of money you are planning to exchange.
    :param denomination: int - the value of a single bill.
    :return: float - the leftover amount that cannot be exchanged given the current denomination.
    """

    return budget % denomination


def exchangeable_value(budget, exchange_rate, spread, denomination):
    """

    :param budget: float - the amount of your money you are planning to exchange.
    :param exchange_rate: float - the unit value of the foreign currency.
    :param spread: int - percentage that is taken as an exchange fee.
    :param denomination: int - the value of a single bill.
    :return: int - maximum value you can get.
    """

    actual_exchange_rate = exchange_rate + exchange_rate * (spread / 100)
    exchanged_budget = exchange_money(budget, actual_exchange_rate)
    number_of_bills = get_number_of_bills(exchanged_budget, denomination)

    return get_value_of_bills(denomination, number_of_bills)
