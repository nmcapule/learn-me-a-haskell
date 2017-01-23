-- Things I encountered:
-- Update #1. So here's the thing, it's hard to simultaneously track of
--    multiple variables in Haskell. For example, my initial solution
--    to the problem is to build a shrinking lazy list of primes
--    of the number 600851475143:
--    ```
--    1. a = list of primes up to x, x = 600851475143
--    2. if x `mod` (head a) == 0, x = x / (head a)
--    3. a = tail a
--    4. repeat until a >= x
--    ```
-- Update #2. Ok, (1) won't work, too costly. I figured that I would
--    only need to compute primes up to sqrt(n) to get the largest
--    prime factor of n.
--
-- Update #3. Some input smaller than the tested number runs much slower.
--    They might possibly be prime numbers. Another way of optimizing this
--    solution is to just test primes up to sqrt of input, which I havent
--    implemented yet.
--
-- Solution to Problem #3:
-- last(factorize 600851475143)

removeDivisible arr x = [c | c <- arr, c `mod` x /= 0]

step :: Integral a => [a] -> [a]
step (x:xs) = x:(step(removeDivisible xs x))
step [] = []

factorize x = f x (step [2..]) where
  f x primes@(y:ys)
    | primes == []    = []
    | y >= x          = [x]
    | x `mod` y == 0  = y:(f (x `div` y) primes)
    | otherwise       = f x ys
