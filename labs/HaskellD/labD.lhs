>--------- problem 17 ---------<
>
>type Memory = [Int]
>type MLoc = Int
>
>data Instruction = Addi MLoc MLoc Int
>                 | Subi MLoc MLoc Int
>                 | Muli MLoc MLoc Int
>                 | Add MLoc MLoc MLoc
>                 | Sub MLoc MLoc MLoc
>                 | Mul MLoc MLoc MLoc
>                 | Move MLoc MLoc
>                 | Load MLoc MLoc
>                 | Loadi MLoc Int
>                 | Store MLoc MLoc
>                 | Beq MLoc MLoc String
>                 | Jump String
>                 | Exit
>                 deriving (Show)
>
>type Program = [ (Maybe String, Instruction) ]
>type ProgramCounter = Int
>
>getMem :: Memory -> MLoc -> Int
>getMem (v:xs) 0 = v
>getMem (x:xs) mloc = getMem xs (mloc-1)
>
>setMem :: Memory -> MLoc -> Int -> Memory
>setMem (_:xs) 0 v = v : xs
>setMem (x:xs) mloc v = x : setMem xs (mloc-1) v
>
>getInstr :: Program -> ProgramCounter -> Instruction
>getInstr (instr:_) 0  = snd instr
>getInstr (_:xs)    n  = getInstr xs (n-1)
>
>getPC :: Program -> String -> ProgramCounter
>getPC ((Just s, instr):xs) label =  if s == label then 0 else 1 + getPC xs label
>getPC ((Nothing, instr):xs) label = 1 + getPC xs label
>
>oneInstr :: Program -> ProgramCounter -> Memory -> (ProgramCounter, Memory)
>oneInstr p pc m =
>  case getInstr p pc of
>    Addi loc1 loc2 n    -> (pc+1, setMem m loc1 ((getMem m loc2) + n))
>    Subi loc1 loc2 n    -> (pc+1, setMem m loc1 ((getMem m loc2) - n))
>    Muli loc1 loc2 n    -> (pc+1, setMem m loc1 ((getMem m loc2) * n))
>    Add loc1 loc2 loc3  -> (pc+1, setMem m loc1 ((getMem m loc2) + (getMem m loc3)))
>    Sub loc1 loc2 loc3  -> (pc+1, setMem m loc1 ((getMem m loc2) - (getMem m loc3)))
>    Mul loc1 loc2 loc3  -> (pc+1, setMem m loc1 ((getMem m loc2) * (getMem m loc3)))
>    Move loc1 loc2      -> (pc+1, setMem m loc1 (getMem m loc2))
>    Load loc1 loc2      -> (pc+1, setMem m loc1 (getMem m (getMem m loc2)))
>    Loadi loc1 n        -> (pc+1, setMem m loc1 n)
>    Store loc1 loc2     -> (pc+1, setMem m (getMem m loc2) (getMem m loc1))
>    Beq loc1 loc2 lbl   -> if (getMem m loc1) == (getMem m loc2) then (getPC p lbl, m) else (pc+1, m)
>    Jump lbl            -> (getPC p lbl, m)
>
>execute :: Program -> ProgramCounter -> Memory -> Memory
>execute p pc m =
>  case getInstr p pc of
>    Exit -> m
>    _    -> case oneInstr p pc m of
>              (pc1,m1) -> execute p pc1 m1
>
>prog1 :: Program
>prog1 = [ (Nothing,    Loadi 0 14)
>        , (Nothing,    Loadi 1 9)
>        , (Nothing,    Addi 0 0 6)
>        , (Nothing,    Sub 0 0 1)
>        , (Nothing,    Jump "End")
>        , (Nothing,    Sub 0 0 1)
>        , (Just "End", Exit) ]
>
>prog2 :: Program
>prog2 = [ (Nothing,     Loadi 0 13)
>        , (Nothing,     Loadi 1 0)
>        , (Nothing,     Loadi 2 0)
>        , (Just "Lbl1", Beq 0 2 "End")
>        , (Nothing,     Add 1 1 0)
>        , (Nothing,     Subi 0 0 1)
>        , (Nothing,     Jump "Lbl1")
>        , (Just "End",  Exit) ]
>
>prog3 :: Program
>prog3 = [ (Nothing,     Loadi 0 0)
>        , (Just "Loop", Beq 4 3 "End")
>        , (Nothing,     Addi 1 4 4)
>        , (Nothing,     Load 1 1)
>        , (Nothing,     Add 0 0 1)
>        , (Nothing,     Subi 4 4 1)
>        , (Nothing,     Jump "Loop")
>        , (Just "End",  Exit) ]
>
>--------- problem 18 ---------<
>
>data MyList a = Empty
>              | Node a (MyList a)
>                deriving Show
>
>myHead :: MyList a -> a
>myHead (Node n rest) = n
>
>myTail :: MyList a -> MyList a
>myTail (Node n rest) = rest
>
>--------- problem 18.1 ---------<

(a) Empty
(b) Node 5 Empty
(c) Node 5 (Node 3 (Node 1 Empty))
(d) Node 'H' (Node 'e' (Node 'l' (Node 'p' (Node '!'))))

>--------- problem 18.3 ---------<
>
>myFilter ::  (a -> Bool) -> (MyList a) -> (MyList a)
>myFilter _ Empty = Empty
>myFilter p l = if (p (myHead l)) then Node (myHead l) (myFilter p (myTail l)) else myFilter p (myTail l)
>
>--------- problem 18.4 ---------<
>
>myDrop ::  Int -> (MyList a)-> (MyList a)
>myDrop _ Empty = Empty
>myDrop 0 l = l
>myDrop n l = myDrop (n-1) (myTail l)
>
>--------- problem 19 ---------<
>
>data Tree a = Null
>            | Branch a (Tree a) (Tree a)
>              deriving Show
>
>treeInsert :: (Ord a) => Tree a -> a -> Tree a
>treeInsert Null v = Branch v Null Null
>treeInsert t@(Branch n ltree rtree) v
>            | v < n     = Branch n (treeInsert ltree v) rtree
>            | v > n     = Branch n ltree (treeInsert rtree v)
>            | otherwise = t
>
>treeBuild' :: (Ord a) => Tree a -> [a] -> Tree a
>treeBuild' tree []     = tree
>treeBuild' tree (v:vs) = treeBuild' (treeInsert tree v) vs
>
>treeBuild :: (Ord a) => [a] -> Tree a
>treeBuild = treeBuild' Null
>
>--------- problem 19.1 ---------<
>
>traverse :: Tree a -> [a]
>traverse Null = []
>traverse (Branch n l r) = (traverse l) ++ [n] ++ (traverse r)
>
>--------- problem 19.2 ---------<
>
>sortList :: (Ord a) => [a] -> [a]
>sortList l = traverse (treeBuild l)
>
>--------- problem 19.3 ---------<
>
>treeMap :: (a -> b) -> (Tree a) -> (Tree b)
>treeMap p Null = Null
>treeMap p (Branch n l r) = Branch (p n) (treeMap p l) (treeMap p r)
>
>--------- problem 20---------<
>
>fact :: Int -> Int   -- this specifies the type of the function fact
>
>fact 0 = 1
>fact n = n * (fact (n-1))
>
>choose :: Int -> Int -> Int
>choose n k = (fact n) `div` ((fact k) * (fact (n - k)))
>
>iChoose ::  IO ()
>iChoose = do putStr "Enter a integer >> "
>             line1 <- getLine
>             let x = read line1 :: Int
>             putStr "Enter another integer >> "
>             line2 <- getLine
>             let y = read line2 :: Int
>             if y < x then putStrLn (show (choose x y))
>                      else putStrLn "Illegal inputs"
>
>--------- problem 21---------<
>
>wc :: String -> IO ()
>wc name = do file <- readFile name
>             let numChar = length file
>             let numWord = length (words file)
>             let numLine = length (lines file)
>             putStr " "
>             putStr (show numLine)
>             putStr " "
>             putStr (show numWord)
>             putStr " "
>             putStr (show numChar)
>             putStr " "
>             putStrLn name

