myMax :: (Ord a) => [a] -> a
myMax [] = error "Cannot get maximum of empty list"
myMax [e] = e
myMax (e:es)
    | e > maxOfRest = e 
    | otherwise = maxOfRest
    where maxOfRest = (myMax es)

myRepeat :: (Ord a, Num a) => a -> b -> [b]
myRepeat n x 
    | n <= 0 = []
    | otherwise = x : (myRepeat (n - 1) x)

myTake :: (Ord a, Num a) => a -> [b] -> [b]
myTake _ [] = []
myTake n (e:es)
    | n <= 0 = [] 
    | otherwise = e : myTake (n - 1) es

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (e:es) = (myReverse es) ++ [e]

myZip :: [a] -> [b] -> [(a,b)]
myZip _ [] = []
myZip [] _ = []
myZip (a:as) (b:bs) = (a,b) : (myZip as bs)

myQuicksort :: (Ord a) => [a] -> [a]
myQuicksort [] = []
myQuicksort (x:xs) = 
    let 
        leftSide = myQuicksort([l | l <- xs, l <= x])
        rightSide = myQuicksort([r | r <- xs, r > x])
    in
        leftSide ++ [x] ++ rightSide


