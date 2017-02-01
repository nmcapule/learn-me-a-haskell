-- THings I encountered:
-- Update #1. I don't like this solution but it works. Optimize later!
--
-- Solution to Problem #7:
-- last (take 10001 (step [2..]))
removeDivisible arr x = [c | c <- arr, c `mod` x /= 0]

step :: Integral a => [a] -> [a]
step (x:xs) = x:(step(removeDivisible xs x))
step [] = []
