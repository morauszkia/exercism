function to_roman(number)
    result = ""
    letters = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
    numbers = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]

    if number < 1
        error("Number must be 1 or greater!")
    end
    
    for i in eachindex(numbers)
        while number >= numbers[i]
            result = result * letters[i]
            number = number - numbers[i]
        end
    end
    result
end