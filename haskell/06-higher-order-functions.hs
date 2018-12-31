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
