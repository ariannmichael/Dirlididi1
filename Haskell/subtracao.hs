subtracao :: [Int] -> [Int] -> IO()
subtracao [] [] = putStr("")
subtracao l1 l2 = do
	let x = (head l1) - (head l2)
	print(x)
	subtracao (tail l1) (tail l2)
	



main = do
	input <- getLine
	let l1 = (map read $ words input :: [Int])
	input2 <- getLine
	let l2 = (map read $ words input2 :: [Int])
	subtracao l1 l2