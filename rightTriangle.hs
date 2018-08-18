-- Find a right triangle where
--  the length of the sides are integers
--  the max length of the side is 10
--  perimiter == 24

rightTriangles = [(a,b,c)| c <- [1..10], b <- [1..c], a <- [1..b],
                    a^2 + b^2 == c^2, a + b + c == 24]