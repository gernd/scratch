doubleMe x = 2 * x
doubleOfBoth x y = doubleMe x + doubleMe y

zeroIfBig x = if x > 100 then 0 else x

myNums = [1,2,3,4,5,6,7]
myOtherNums = [9,10,11]
numsCombined = myNums ++ myOtherNums

simpleList = "a" : []

mouseChar = "Mickey Mouse" !! 3


firstList = [1,2,3]
secondList = [1,2,6]
headOfFirst = head firstList
allButLast = init secondList
oneToHundred = [1..100]
aToZ = ['a'..'z']
comprehension = [x * 2 | x <- [1..10], x+1 > 3]
fizzBuzzSolved = [if (mod x 3 == 0) then "fizz" else "fuzz" | x <- [1..100]]

nouns = ["pope", "plumber", "frog", "mouse"]
adjectives = ["lazy", "attractive", "sad", "mysterious"]

combined = [a ++ " " ++ n | n <- nouns, a <- adjectives]

myRemoveNonUppercase myString = [c | c <- myString, elem c ['A'..'Z']]

myPair = ("One", 2)

zipped = zip [1,2,3] ['a', 'b', 'c']
zippedInfinite = zip [1..] ['a'..]
generatedTuple = [(x,y) | x <- [1..10], y <- [0..x], x + y == 5]

generateSubsets :: [a] -> [[a]]
generateSubsets [] = [[]]
generateSubsets (e:es) = 
    let
        computedSubSets = generateSubsets es
    in  
        prependElToSubsets e computedSubSets ++ computedSubSets
    where
        prependElToSubsets e subsets = map (\subset -> e : subset) subsets
    

