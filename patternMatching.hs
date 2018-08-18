-- Pattern matching - patterns will be checked from top to bottom
-- Always have a catchall pattern at the end!

lucky :: Int -> String
lucky 7 = "You Win"
lucky x = "You don't win"

sayMe :: Int -> String
sayMe 1 = "One"
sayMe 2 = "Two"
sayMe 3 = "Three"
sayMe x = "Not 1,2 or 3"

-- recursion time
factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x - 1)

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- Getting values from triples
first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, x, _) = x

third :: (a, b, c) -> c
third (_, _, x) = x

-- Pattern matching in list comprehension
-- xs = [(1,2), (3,4), (5,6)]
-- [a+b | (a, b) <- xs]

-- Pattern match w/ list
head' :: [a] -> a
head' [] = error "You can call head on an empty list!"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "empty"
tell (x:[]) = "one element " ++ show x
tell (x:y:[]) = "two elements " ++ show x ++ "and" ++ show y
tell (x:y:_) = "lotsa elements, first two are " ++ show x ++ " and " ++ show y

-- As-patterns
-- get the first letter and the whole word
firstLetter :: String -> String
firstLetter "" = "empty"
firstLetter all@(x:xs) = "First in " ++ all ++ ": " ++ [x]