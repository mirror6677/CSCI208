>--------- problem 1 ---------<
>
>data Direction = North | East | South | West
>     deriving (Show)

*Main> North > South

<interactive>:4:7:
    No instance for (Ord Direction) arising from a use of `>'
    Possible fix: add an instance declaration for (Ord Direction)
    In the expression: North > South
    In an equation for `it': it = North > South

(1) Are the values ordinal?
Enum values are not ordinal by default.
However, we can make it ordinal by the following.

>data Day = Mon | Tues | Wed | Thurs | Fri
>     deriving (Show, Eq, Ord, Enum)

*Main> Mon < Tues
True
*Main> Mon > Wed
False

(2) Do they have admitted integer values?
They do have admitted integer values (shown below).

*Main> fromEnum Mon
0
*Main> fromEnum Tues
1

(3) If they are ints, can you choose which ints?
I can choose which ints.
However, changing the int values won't affect their order (shown below).

(4) If you choose, must they be contiguous?
They do not need to be contiguous.

(5) If you choose, are duplicate int values ok?
Duplicate int values are ok, but results in a warning when loading the program (shown below).

>data Suit = Club | Diamond | Heart | Spade
>     deriving (Show, Eq, Ord)
>instance Enum Suit where
>   fromEnum Club = 100
>   fromEnum Diamond = 20
>   fromEnum Heart = 50
>   fromEnum Spade = 50

   fromEnum Spade = 0.5
   fromEnum Spade = "hello"

>   toEnum 100 = Club
>   toEnum 20 = Diamond
>   toEnum 50 = Heart
>   toEnum 50 = Spade

hw8.lhs:44:5: Warning:
    Pattern match(es) are overlapped
    In an equation for `toEnum': toEnum 50 = ...
Ok, modules loaded: Main.

*Main> fromEnum Club
100
*Main> fromEnum Heart
50
*Main> Club < Heart
True

(6) If they are ints, do you get all the int operators too?
They don't get all the int operators (shown below).

*Main> Club + Heart

<interactive>:6:6:
    No instance for (Num Suit) arising from a use of `+'
    Possible fix: add an instance declaration for (Num Suit)
    In the expression: Club + Heart
    In an equation for `it': it = Club + Heart

(7) If they are attached to some values, can you choose which values?
They cannot be attached values of types other than Int.
The error message below shows up when the commented lines above are uncommented.

hw8.lhs:47:22:
    No instance for (Fractional Int) arising from the literal `0.5'
    Possible fix: add an instance declaration for (Fractional Int)
    In the expression: 0.5
    In an equation for `fromEnum': fromEnum Spade = 0.5
    In the instance declaration for `Enum Suit'
Failed, modules loaded: none.

(8) If you can choose values, do the values all have to be the same type?
No, I can't choose values of types other than Int

>score :: Suit -> Int
>score a = (fromEnum a) ^ 2

(9) Can you add your own functions to your type?
Yes, I can add my own function to the type.

*Main> score Club
10000
*Main> score Heart
2500
*Main>

>--------- problem 2 ---------<

(\ x -> x + 3)

example usage:
(\ x -> x + 3) 3  (gives 6)
(\ x -> x + 3) 6  (gives 9)

>--------- problem 3 ---------<
>
>foo :: [Int] -> [Int]
>foo list = filter (\x -> x<5) list

>--------- problem 4 ---------<

(a) foo :: Int -> ([Int] -> (Bool -> Int))
(b) foo :: (Int,Int,Float) -> ([Int] -> (Bool -> Int))
(c) foo :: Int -> (Char -> (Float -> Bool))
(d) foo :: (a -> (b -> b)) -> (b -> ([a] -> b))
