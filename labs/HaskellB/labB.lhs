>--------- problem 6 ---------<
>
>-------- problem 6.1 --------<
>discriminant :: Int -> Int -> Int -> Float
>discriminant a b c = ((fromIntegral b) ^ 2) - (4 * (fromIntegral a) * (fromIntegral c))
>
>roots ::  Int -> Int -> Int -> (Float, Float)
>roots a b c = if ((discriminant a b c) < 0)
>                 then error "No real roots"
>                 else (root1, root2)
>              where
>                   root1 = (0 - fromIntegral b + sqrt(discriminant a b c)) / fromIntegral (2 * a)
>                   root2 = (0 - fromIntegral b - sqrt(discriminant a b c)) / fromIntegral (2 * a)
>
>-------- problem 6.2 --------<
>allRoots :: Int -> Int -> Int -> ((Float,Float),(Float,Float))
>allRoots a b c = ((real1, img1), (real2, img2))
>                 where
>                      real1 = if ((discriminant a b c) >= 0)
>                                 then (0 - fromIntegral b + sqrt(discriminant a b c)) / fromIntegral (2 * a)
>                                 else (0 - fromIntegral b) / fromIntegral (2 * a)
>                      real2 = if ((discriminant a b c) >= 0)
>                                 then (0 - fromIntegral b - sqrt(discriminant a b c)) / fromIntegral (2 * a)
>                                 else (0 - fromIntegral b) / fromIntegral (2 * a)
>                      img1 = if ((discriminant a b c) >= 0)
>                                then 0
>                                else (sqrt(0 - discriminant a b c) / fromIntegral (2 * a))
>                      img2 = if ((discriminant a b c) >= 0)
>                                then 0
>                                else ((0 - sqrt(0 - discriminant a b c)) / fromIntegral (2 * a))
>
>-------- problem 7 --------<

For head [1..n]
It prints out 1 for all n values very fast.

For tail [1..n]
It prints out 2 to n for different n values. Larger n is, longer the time it takes to print out the result.

For head (tail [1..n])
All the evaluations of head(tail [1..n]) print out 2.
The first element of all the tail[1..n] shoule be 2 since tail[1..n] prints out all the number after 2 to n and head prints out the first element of its input list. Thus, for all these expressions, it will print out 2 which is the first element of all the tail evaluation.
The results are printed really fast because of Haskell's lazy evaluation since it does not evaluate the whole tail, but only finds the first element and prints.

>-------- problem 8 --------<
>
>-------- problem 8.1 --------<
>firstLast :: [a] -> [a]
>firstLast [] = error "Not enough length"
>firstLast [x] = error "Not enough length"
>firstLast [x, y] = []
>firstLast (h : t) = (head t : firstLast t)
>
>-------- problem 8.2 --------<
>strip :: Int -> [a] -> [a]
>strip n l = take (length l - (2 * n)) (drop n l)
>
>-------- problem 8.3 --------<
>mrg :: [Int] -> [Int] -> [Int]
>mrg [] l2 = l2
>mrg l1 [] = l1
>mrg (h1 : t1) (h2 : t2) = if (h1 <= h2)
>                             then (h1 : (mrg t1 (h2 : t2)))
>                             else (h2 : (mrg (h1 : t1) t2))
>
>-------- problem 9 --------<

Pattern         Argument          Succeeds?         Bindings
1               1                 yes               1 = 1
2               1                 no
x               1                 yes               x = 1
x:y             [1,2]             yes               x = 1, y = [2]
x:y             [[1,2]]           yes               x = [1,2], y = []
x:y             "Bucknell"        yes               x = 'B', y = "ucknell"
x:y             ["Bucknell"]      yes               x = "Bucknell", y = []
x:y:z           [1,2,3,4,5]       yes               x = 1, y = 2, z = [3,4,5]
x               []                yes               x = []
[1,x]           [2,2]             no
[]              [2,2]             no
(x,y)           [1,2,3,4]         no
((x:y),(z:w))   ([1],"Bucknell")  yes               x = 1, y = [], z = 'B', w = "ucknell"

>-------- problem 10 --------<
>
>-------- problem 10.1 --------<
>reduceRat :: (Int, Int) -> (Int, Int)
>reduceRat (a, b) = (a `div` d, b `div` d)
>                   where d = gcd a b
>
>addRat ::  (Int, Int) -> (Int, Int) -> (Int, Int)
>addRat (_, 0) (_, _) = error "Can’t divide by zero!"
>addRat (_, _) (_, 0) = error "Can’t divide by zero!"
>addRat (a, b) (x, y) = reduceRat (a * y + b * x, b * y)
>
>-------- problem 10.1 --------<

The merge sort written above already used pattern matching.

>-------- problem 11 --------<
>
>-------- problem 11.1 --------<
>sorted :: [Int] -> Bool
>sorted [] = True   -- base case 1
>sorted ([x]) = True    -- base case 2
>sorted (x : y : z) = ((x <= y) && sorted (y : z))    -- recursive case
>
>-------- problem 11.2 --------<
>mySum :: [Int] -> Int
>mySum [] = 0   -- base case
>mySum (h : t) = h + mySum t    -- recursive case
