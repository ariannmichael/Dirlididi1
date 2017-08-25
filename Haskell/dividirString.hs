import Data.List
import System.IO

divideString :: [String] -> [String] -> IO()
divideString l1 l2 = do
	if(l1 == []) then do putStr("")
		else do
				putStr(head l1)
				putStr(" ")
				putStrLn(head l2)
				divideString (tail l1) (tail l2)


main = do
	input1 <- getLine
 	let l1 = (words input1)

 	input2 <- getLine
 	let l2 = (words input2)

	divideString l1 l2