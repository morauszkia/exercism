module LuciansLusciousLasagna

let expectedMinutesInOven = 40

let minutesPerLayer = 2

let remainingMinutesInOven minutesPassed = expectedMinutesInOven - minutesPassed

let preparationTimeInMinutes layers = layers * minutesPerLayer

let elapsedTimeInMinutes layers minutesInOven = preparationTimeInMinutes layers + minutesInOven
