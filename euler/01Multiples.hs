-- Things I encountered:
-- Update #1. At the time, I only know how to load an hs file through ghci:
--    `ghci 01Multiples.hs`
--    However, I would like to know how to output anything when typing this
--    I expected that appending `sum3or5 10` would output 22 when I ran
--    the script, but it outputted an error. So for now, I would always
--    just leave it in the bottom of the scripts on how to particularly 
--    solve the Project Euler problem.
-- Update #2. Not equal is /= in Haskell
-- Update #3. I can do 
--    [c | c <- a, cond1, cond2]
--    instead of
--    [c | c <- a, cond1 && cond2]
--
-- Solution to Problem #1:
-- sum3or5 10

sum3or5 :: (Integral a) => a -> a
sum3or5 x = sum [c | c <- [1..(x-1)], c `mod` 3 /= 0, c `mod` 5 /= 0]

