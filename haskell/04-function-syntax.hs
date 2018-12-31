isCorrectAnswer :: Int -> String
isCorrectAnswer 42 = "Yep that's correct"
isCorrectAnswer x = "Sorry, " ++ (show x) ++ " is not correct"

addVectors ::Num a => (a,a) -> (a,a) -> (a,a)
addVectors (x1,y1) (x2, y2) = (x1 + x2, y1 + y2)

headAndLengthOfRest :: [a] -> (a, Int)
headAndLengthOfRest (x:xs) = (x, (length xs))

printMyList :: Show a => [a] -> String
printMyList (e:es) = "The list contains " ++ (show e) ++ " " ++ printMyList(es) 
printMyList [] = "This is the end of the list" 

mySum :: Num a => [a] -> a
mySum [] = 0
mySum (e:es) = e + mySum(es)

guessTheNumber :: (RealFloat a) => a -> String
guessTheNumber x
    | x < 20 = "That is too small"  
    | x > 20 = "That is too big"  
    | otherwise = "right"

myCompare :: (Ord a) => a -> a -> Ordering
myCompare x y
    | x < y = LT
    | x == y = EQ
    | otherwise = GT

rateTheString :: String -> String
rateTheString s 
    | theLength < threshold = "A small string"
    | otherwise = "a larger string"
    where theLength = length s
          threshold = 5

calcSumInTupleList :: (Num a) => [(a,a)] -> [a]
calcSumInTupleList tuples = [(first + second) | (first, second) <- tuples]

sumOfSquares :: (Num a) => a -> a -> a
sumOfSquares x y = 
    let squareOfX = x * x
        squareOfY = y * y
    in
        squareOfX + squareOfY

myCases :: String -> String
myCases input =
    case input of "Yes" -> "No"
                  _ -> "Something else"
