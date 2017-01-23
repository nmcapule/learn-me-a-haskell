-- Things I encountered:
-- Update #1. This looks like a simple palindrome check. I can generate
--    all pairs of three digit numbers along with their product using:
--    ```
--    [(a, b, show $ a*b) | a <- [100..999], b <- [100..999]]
--    ```
--    With that, it is easy to implement a palindrome check on each
--    stringed product.
-- Update #2. We could probably cut the calculation in half by considering
--    repeat combinations of two numbers.
--    ```
--    [(a, b, show $ a*b) | a <- [500..999], b <- [100..999]]
--    ```
--
-- Solution to Problem #4:
-- [(a, b, show $ a*b) | a <- [500..999], b <- [100..999], palindrome $ show $ a * b]

palindrome s = s == reverse s