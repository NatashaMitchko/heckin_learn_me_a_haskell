
-- Accessing items in lists
[0,1,2,3,4] !! 2 == 2

-- List Operations
-- Head returns the first element
head [0,1,2,3] == 0

-- Tail chops off the head
tail [0,1,2,3] == [1,2,3]

-- Last gets the last element
last [1,2] == 2

-- Init chops off the last element
init [1,2,3] == [1,2]

length [1,1,1] == 3

null [] == True
null [1,2] == False

reverse [1,2,3] == [3,2,1]

-- Take takes the n elements from the front of the list
take 3 [1,2,3,4] == [1,2,3]
take 100 [1,2,3] == [1,2,3]
take 0 [6,6,6] == []

-- drop is the opposite of take
drop 3 [1,2,3,4] == [4]
drop 100 [1,2] == []

-- maximum and minimum are functions too
-- elem checks to see if someting is in a list (usually as infix)
5 `elem` [1,2,3,4,5] == True
9 `elem` [1,2,3,4,5] == False
elem 2 [1,2]

-- List Ranges
[1..20]
['a'..'z']
-- List Ranges with a step
-- The first two are the first two in the sequence
[2,4..20]
-- Decending ranges need to have a step
[20,19..1]

-- Get the first 10 multiples of 11
[11,22..11*10]

-- Infinite lists
-- You can make an infinite list using a range and not specifying an upper bound
[2,4..] -- all evens up to forever

-- To print them you have to say when to stop
take 10 [2,4..]

-- cycles are also infinite so you have to say where to stop there too
take 5 (cycle [1,2,3]) == [1,2,3,1,2]
take 11 (cycle "LOL ") == "LOL LOL LOL" -- remember strings are lists too

-- you can also repeat forever
take 5 (repeat 5) == [5,5,5,5,5]

-- replicate takes the length of the list and the thing to be replicated
replicate 3 10 == [10,10,10]

-- List comprehension is like set comprehension
[x * 2 | x <- [1..10]]

-- list comprehansions can have predicates
-- we want all the numbers that are >= 12 after transformation
[x * 2| x <- [1..10], x >= 12]

-- All numbers from 50-100 when divided by 7 have a remainder of 3
[x | x <- [50..100], x `mod` 7 == 3]



