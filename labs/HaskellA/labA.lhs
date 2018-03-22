>--------- problem 1 ---------<
>
>fact :: Int -> Int   -- this specifies the type of the function fact
>
>fact 0 = 1
>fact n = n * (fact (n-1))
>
>-------- problem 1.1 --------<
>prob1 = (fact 10) `div` ((fact 5) * (fact (10 - 5)))
>
>-------- problem 1.2 --------<
> -- (a) The program never stops, because a base case is never reached.
> -- (b) The parentheses around fact (n-1) is not necessary, but the parentheses around n-1 is necessary.
>
>-------- problem 1.3 --------<
>choose :: Int -> Int -> Int
>choose n k = (fact n) `div` ((fact k) * (fact (n - k)))
>
>-------- problem 1.4 --------<
> -- fact 50 returns a huge negative number that indicates overflow. 50 choose 5 returns 0.
>
>-------- problem 1.5 --------<
>choose2 :: Int -> Int -> Int
>choose2 n k = (choose2 (n-1) (k-1)) + (choose2 (n-1) k)
>
>-------- problem 1.8 --------<
>fib :: Int -> Int
>fib 0 = 1
>fib 1 = 1
>fib n = fib (n-1) + fib (n-2)
>
>--------- problem 2 ---------<
>fibsel n = if n==0 || n==1
>              then 1
>              else fibsel (n-1) + fibsel (n-2)
>
>--------- problem 3 ---------<
>fibcase n = case n of
>                 0 -> 1
>                 1 -> 1
>                 n -> fibcase (n-1) + fibcase (n-2)
>
>--------- problem 4 ---------<
>
>-------- problem 4.1 --------<
>isBetween :: Int -> Int -> Int -> Bool
>isBetween n min max = (n >= min) && (n <= max)
>grade :: Int -> Char
>grade n = if (isBetween n 90 100)
>             then 'A'
>             else if (isBetween n 80 89)
>                     then 'B'
>                     else if (isBetween n 70 79)
>                             then 'C'
>                             else if (isBetween n 60 69)
>                                     then 'D'
>                                     else if (isBetween n 0 59)
>                                             then 'F'
>                                             else 'E'
>
>-------- problem 4.2 --------<
>abs2 :: Int -> Int
>abs2 n = if (n >= 0)
>           then n
>           else (0 - n)
>
>--------- problem 5 ---------<
>
>hyp :: Int -> Int -> Float
>hyp a b = sqrt ((fromIntegral a) ^ 2 + (fromIntegral b) ^ 2)
