/// <reference path="./global.d.ts" />
//
// @ts-check


const PIZZA_PRICES = {
  Margherita: 7,
  Caprese: 9,
  Formaggio: 10,
}

const EXTRA_PRICES = {
  ExtraSauce: 1,
  ExtraToppings: 2,
}

function extrasPrice(...extras) {
  const [nextExtra, ...rest] = extras;
  if (!nextExtra) return 0;
  else return EXTRA_PRICES[nextExtra] + extrasPrice(...rest)
  
}

/**
 * Determine the prize of the pizza given the pizza and optional extras
 *
 * @param {Pizza} pizza name of the pizza to be made
 * @param {Extra[]} extras list of extras
 *
 * @returns {number} the price of the pizza
 */
export function pizzaPrice(pizza, ...extras) {
  const base_price = PIZZA_PRICES[pizza];
  return base_price + extrasPrice(...extras)
}

/**
 * Calculate the prize of the total order, given individual orders
 *
 * @param {PizzaOrder[]} pizzaOrders a list of pizza orders
 * @returns {number} the price of the total order
 */
export function orderPrice(pizzaOrders) {
  let price = 0;
  for (const { pizza, extras } of pizzaOrders) {
    price += pizzaPrice(pizza, ...extras)
  }
  return price;
}
