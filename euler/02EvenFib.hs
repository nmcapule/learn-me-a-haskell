-- Things I encountered:
-- Update #1. Haskell does not memoize by default
--    I searched a little bit and it looks like 
--    I would need to implement my own Memoization routine
-- Update #2. It would be nice if I could reuze computed values inside
--    a function, ala:
--    fib x = sum(take 2 c):c | c <- fib(x-1)
--
-- Solution to Problem #2:
-- sumEvenFib 100 4000000

fib :: (Integral a) => a -> [Integer]
fib 2 = [1, 1]
fib x = sum(take 2 (cry)):cry
  where cry = fib (x-1)

sumEvenFib x max = sum [c | c <- fib x, c < max, even c]
