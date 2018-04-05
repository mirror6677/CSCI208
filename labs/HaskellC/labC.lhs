>import Data.Char
>--------- problem 12 ---------<
>
>-------- problem 12.1 --------<

Prelude> map abs [1,2,3,-4]
[1,2,3,4]

>-------- problem 12.2 --------<

Prelude> map length ["hello", "world"]
[5,5]

>--------- problem 13 ---------<
>
>-------- problem 13.1 --------<
>convert2IntHelper :: Int -> Int -> Int
>convert2IntHelper x y = x * 10 + y
>
>convert2Int :: [Char] -> Int
>convert2Int (h : t) = foldl convert2IntHelper (digitToInt h) (map digitToInt t)
>
>-------- problem 13.2 --------<
>convertHex2IntHelper :: Int -> Int -> Int
>convertHex2IntHelper x y = x * 16 + y
>
>convertHex2Int :: [Char] -> Int
>convertHex2Int (h : t) = foldl convertHex2IntHelper (digitToInt h) (map digitToInt t)
>
>--------- problem 14 ---------<
>
>mySum :: [Float] -> Float
>mySum (h : t) = foldl (+) h t
>
>stdDev :: [Float] -> Float
>stdDev (h : t) = sqrt(mySum (map (^ 2) (h : t)) / n - (mySum (h : t) / n) ^ 2)
>                 where n = fromIntegral (length (h : t))
>
>--------- problem 15 ---------<
>
>--------- problem 15.1 ---------<
>insert :: Ord a => [a] -> a -> [a]
>insert ls el = [x | x <- ls, x <= el] ++ [el] ++ [x | x <- ls, x > el]
>
>--------- problem 15.2 ---------<
>myMap :: (a -> b) -> [a] -> [b]
>myMap f ls = [f x | x <- ls]
>
>--------- problem 15.3 ---------<
>sieve :: [Int] -> [Int]
>sieve [] = []
>sieve (p:xs) = p : sieve [x | x <-xs, x `mod` p /= 0]
>
>factors :: Int -> [Int]
>factors n = [x | x <- sieve [2..n], n `mod` x == 0]
>
>--------- problem 16 ---------<
>data Cplx = Complex Float Float
>instance Show Cplx where
>                   show (Complex a b) = (show a) ++ " + " ++ (show b) ++ "i"
>
>discriminant :: Int -> Int -> Int -> Float
>discriminant a b c = ((fromIntegral b) ^ 2) - (4 * (fromIntegral a) * (fromIntegral c))
>
>roots :: Int -> Int -> Int -> (Cplx, Cplx)
>roots a b c = ((Complex real1 img1), (Complex real2 img2))
>               where
>                    real1 = if ((discriminant a b c) >= 0)
>                               then (0 - fromIntegral b + sqrt(discriminant a b c)) / fromIntegral (2 * a)
>                               else (0 - fromIntegral b) / fromIntegral (2 * a)
>                    real2 = if ((discriminant a b c) >= 0)
>                               then (0 - fromIntegral b - sqrt(discriminant a b c)) / fromIntegral (2 * a)
>                               else (0 - fromIntegral b) / fromIntegral (2 * a)
>                    img1 = if ((discriminant a b c) >= 0)
>                              then 0
>                              else (sqrt(0 - discriminant a b c) / fromIntegral (2 * a))
>                    img2 = if ((discriminant a b c) >= 0)
>                              then 0
>                              else ((0 - sqrt(0 - discriminant a b c)) / fromIntegral (2 * a))
