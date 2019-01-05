threeAdder :: (Num a) => a -> a -> a -> a
threeAdder x y z = x + y + z
addTwo = threeAdder 2
addTwoAndOne = addTwo 1

divideByTen x = (x/10)

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith _ [] _ = []
myZipWith _ _ [] = []
myZipWith f (a:as) (b:bs) = (f a b) : (myZipWith f as bs)

largestDivBy15 = head (filter p [10000, 9999..])
    where p x = (x `mod` 15 == 0)

sumOfAllSquaresSmaller12 = sum (takeWhile (< 100) (map (^2) [1..]))
listOfFuns = map (*) [1..10]

lambdaFiltered = filter (\x -> x `mod` 2 == 0) [1..10]

mySum :: (Num a) => [a] -> a
mySum arr = foldl (\acc x -> acc + x) 0 arr

myMap :: (a -> b) -> [a] -> [b]
myMap f list = foldr (\e acc -> (f e) : acc) [] list

scanned = scanl (\x acc -> x ++ " " ++ acc) "" ["this one", "another one", "the last one" ]
takeScanned = takeWhile (< 100) (scanl1 (+)  (map (\x -> x * x) [1..]))

-- function application with $
filtered = sum $ filter (<3) [1,2,100]
listOfResults = map ($ 10) [sqrt, (\x -> x * 100)]

-- function composition
numToString :: (Show a) => a -> [Char]
numToString a = "the number " ++ (show a)
stringTwice :: [Char] -> [Char]
stringTwice s = s ++ " " ++ s

numStringTwice a  = (stringTwice . numToString) a

moreThanOneParam = sum . replicate 5 . max 2 $ 5

pointFree = replicate 10 . max 50

