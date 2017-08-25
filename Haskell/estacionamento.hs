import Data.List
import System.IO


valorEstacionamento :: [Char] -> Int

valorEstacionamento valor
	| (valor == "moto") = 5
	| (valor == "carro") = 10
	| otherwise = 30


main = do
	x <- getLine
	putStrLn(show(valorEstacionamento x))