decToRoman :: Int -> [Char]
decToRoman x 
    | x >= 1000 = "M" ++ decToRoman (x - 1000)
    | x >= 900 = "CM" ++ decToRoman (x - 900)
    | x >= 500 = "D" ++ decToRoman (x - 500)
    | x >= 400 = "CD" ++ decToRoman (x - 400)
    | x >= 100 = "C" ++ decToRoman (x - 100)
    | x >= 90 = "XC" ++ decToRoman (x - 90)
    | x >= 50 = "L" ++ decToRoman (x - 50)
    | x >= 40 = "XL" ++ decToRoman (x - 40)
    | x > 10 = "X" ++ decToRoman (x - 10)
decToRoman 0 = ""
decToRoman 1 = "I"
decToRoman 2 = "II"
decToRoman 3 = "III"
decToRoman 4 = "IV"
decToRoman 5 = "V"
decToRoman 6 = "VI"
decToRoman 7 = "VII"
decToRoman 8 = "VIII"
decToRoman 9 = "IX"
decToRoman 10 = "X"
