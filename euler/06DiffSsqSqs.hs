-- Things I encountered:
-- Update #1: No need for real complicated solution. This is pretty
--    straightforward.
-- 
-- Solution to Problem #6:
-- (sqs [1..100]) - (ssq [1..100])
ssq :: Integral a => [a] -> a
ssq (x:xs) = (ssq xs) + x*x
ssq [] = 0

sqs :: Integral a => [a] -> a
sqs (xs) = x*x
  where x = sum xs