export class ResistorColorTrio {
  color_list = [
  'black',
  'brown',
  'red',
  'orange',
  'yellow',
  'green',
  'blue',
  'violet',
  'grey',
  'white'
  ]
  
  prefixes = {
    "giga": 10**9,
    "mega": 10**6,
    "kilo": 10**3
  }
  
  constructor(colors) {
    this.colors = colors;
  }

  #decode(color) {
    const decoded = this.color_list.indexOf(color);
    if (decoded === -1) throw new Error("invalid color");
    
    return this.color_list.indexOf(color);
  }

  get label() {
    const firstDigit = this.#decode(this.colors[0]);
    const secondDigit = this.#decode(this.colors[1]);
    const multiplier = this.#decode(this.colors[2]);
  
    let num = (firstDigit*10 + secondDigit) * 10 ** multiplier;
    let prefix = "";
        
    for (const key in this.prefixes) {  
        const magnitude = this.prefixes[key];
        if (num > magnitude && num % magnitude == 0) {
            num /= magnitude;
            prefix = key;
            break;
        }
    }
    
    return `Resistor value: ${num} ${prefix}ohms`;
  }
}
