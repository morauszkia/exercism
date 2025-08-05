export const convert = (num) => {
  return [[3, "Pling"], [5, "Plang"], [7, "Plong"]]
    .reduce((result, [divisor, sound]) => 
      num % divisor ? result : result += sound, "") 
    || num.toString();
};
