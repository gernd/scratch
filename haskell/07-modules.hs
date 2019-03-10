import Data.List
import Debug.Trace
-- only import certain functions import Data.List(nub, sort)
-- import all functions but certain ones import Data.List hiding (nub)

-- corresponding functions have to be qualified when invoked
import qualified Data.Map
-- with alias: import qualified Data.Map as M

numUniques :: (Eq a) => [a] -> Int
numUniques = trace ("NumUniques called") length . nub

myTestFunc :: (Num a, Show a) => [a] -> [a]
myTestFunc [] = []
myTestFunc (e:es) = trace ("My Test func called, incrementing " ++ (show e)) (e + 1) : (myTestFunc es)

interspersed = intersperse '.' "Banana"
intercalated = intercalate [1,2,3] [[4,5,6],[7,7,9]]
transposed = transpose [[1,2,3],[4,5,6],[7,8,9]]

flattenedList = concat [[1,2,3],[4,5,6],[7,8,9]]
flattenedListWithFunction = concatMap (replicate 4) [1..3]

anyEven = any (\x -> x `mod` 2 == 0) [1,3,5]
iterated = take 10 $ iterate (*2) 1
