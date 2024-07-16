type OpeningBracket = "(" | "{" | "[";
type ClosingBracket = ")" | "}" | "]";

const bracketPairs: { [K in OpeningBracket]: ClosingBracket } = {
  "(": ")",
  "{": "}",
  "[": "]",
};

const isOpening = (bracket: string): boolean => "({[".includes(bracket);
const isCLosing = (bracket: string): boolean => ")}]".includes(bracket);

export function isPaired(input: string): boolean {
  const bracketStack: OpeningBracket[] = [];

  for (const c of input.split("")) {
    if (isOpening(c)) {
      bracketStack.push(c as OpeningBracket);
    } else if (isCLosing(c)) {
      const last: OpeningBracket | undefined = bracketStack.pop();

      if (!last || c !== bracketPairs[last]) return false;
    }
  }

  return bracketStack.length === 0;
}
