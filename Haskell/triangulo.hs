import Data.List
import System.IO





valorEstacionamento :: [Char] -> Int
valorEstacionamento valor = | (valor == 'moto') = 5
							| (valor == 'carro') = 10
							| otherwise = 30


main = do
	input <- getLine
	let x = read input
	valorEstacionamento 'moto'