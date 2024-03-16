export const parse = (input) => {
  return input.replace(/['_]/, '').match(/\b\w/g).join('').toUpperCase();
};
