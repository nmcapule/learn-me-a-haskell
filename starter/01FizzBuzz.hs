fizzBuzz' :: (Show a, Integral a) => a -> String
fizzBuzz' x
  | x `mod` 15 == 0 = "FizzBuzz"
  | x `mod` 3 == 0 = "Fizz"
  | x `mod` 5 == 0 = "Buzz"
  | otherwise = show x

fizzBuzz :: (Show a, Integral a) => a -> [String]
fizzBuzz x = [fizzBuzz' c | c <- [1..x]]
