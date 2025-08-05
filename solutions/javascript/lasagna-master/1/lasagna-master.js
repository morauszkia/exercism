/// <reference path="./global.d.ts" />
// @ts-check

/**
 * Implement the functions needed to solve the exercise here.
 * Do not forget to export them so they are available for the
 * tests. Here an example of the syntax as reminder:
 *
 * export function yourFunction(...) {
 *   ...
 * }
 */

export function cookingStatus(remainingTime) {
  return remainingTime ? 'Not done, please wait.' :
    remainingTime === 0 ? 'Lasagna is done.' :
    'You forgot to set the timer.'
}

export function preparationTime(layersArray, averageTimePerLayer = 2) {
  return layersArray.length * averageTimePerLayer;
}

export function quantities(layersArray) {
  const needed = { noodles: 0, sauce: 0 }
  for (const layer of layersArray) {
    if (layer === 'noodles') needed.noodles += 50;
    if (layer === 'sauce') needed.sauce += 0.2
  }
  return needed;
}

export function addSecretIngredient(friendsList, myList) {
  myList.push(...friendsList.slice(-1));
}

export function scaleRecipe(recipeForTwo, portions) {
  const ratio = portions / 2;
  const newRecipe = {}
  for (const ingredient in recipeForTwo) {
    newRecipe[ingredient] = recipeForTwo[ingredient] * ratio;
  }
  return newRecipe;
}