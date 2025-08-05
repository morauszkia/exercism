const bracketPairs = {
  "(": ")",
  "{": "}",
  "[": "]",
};

export const isPaired = (stringToCheck) => {
  const bracketsStack = [];

  for (const c of stringToCheck.split("")) {
    if ("({[".includes(c)) {
      bracketsStack.push(c);
    } else if (")}]".includes(c)) {
      const lastBracket = bracketsStack.pop();

      if (c !== bracketPairs[lastBracket]) {
        return false;
      }
    }
  }
  return bracketsStack.length === 0;
};
