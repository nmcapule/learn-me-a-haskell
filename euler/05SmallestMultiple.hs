-- Things I encountered:
-- Update #1. This looked really simple, although a bit hard to automate.
--    I know for a fact that the answer is 232792560, by induction on 5040
--    I'll try a pseudo code
--    ```
--    1. xs = []
--    2. for each elem in [1..20] as x
--    4.   ys = factors of x
--    5.   if ys subset of xs continue
--    6.   else add missing elems of ys into xs
--    7. result = product xs
-- Update #2. A much simpler solution. Use LCM. Also, the Prelude module
--    already has an included lcm function. It's nice to implement my own
--    though.
--
-- Solution to Problem #5:
-- foldl lcm' 1 [1..20]

lcm' x y = f x y 1 where
  f x y c
    | (x*c) `mod` y == 0 = x*c
    | otherwise = f x y (c+1)