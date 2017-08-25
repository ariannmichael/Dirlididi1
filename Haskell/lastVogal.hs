import Data.List
import System.IO

ultimaVogal :: [String] -> IO()
ultimaVogal [] = putStr("")
ultimaVogal (s: xs)
	|p == 'a' = do
		putStr("a")
		ultimaVogal xs
	|p == 'e' = do
		putStr("e")
		ultimaVogal xs
	|p == 'i' = do
		putStr("i")
		ultimaVogal xs
	|p == 'o' = do
		putStr("o")
		ultimaVogal xs
	|p == 'u' = do
		putStr("u")
		ultimaVogal xs
	|otherwise = do
		putStr("")
		ultimaVogal xs
	where 
	  p = (last s) 




main = do
	l1 <- getLine

 	l2 <- getLine

 	l3 <- getLine

 	l4 <- getLine

 	l5 <- getLine

 	let lista = l1 : l2 : l3 : l4 : l5 : []
 	ultimaVogal lista