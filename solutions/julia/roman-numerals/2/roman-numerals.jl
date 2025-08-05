function to_roman(number)
    
    letters = (
        1000 => "M", 
        900 => "CM",
        500 => "D",
        400 => "CD",
        100 => "C",
        90 => "XC",
        50 => "L",
        40 => "XL", 
        10 => "X", 
        9 => "IX", 
        5 => "V", 
        4 => "IV", 
        1 => "I"
    )

    result = ""
    
    if number < 1
        error("Number must be 1 or greater!")
    end
    
    for (value, letter) in letters
        while number >= value
            result *= letter
            number -= value
        end
    end
    result
end