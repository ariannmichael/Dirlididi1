import Data.List
import System.IO

posto :: Double -> Double -> Double -> Double
posto gasolina alcool litros =
	if (alcool * 0.7 >  gasolina)
		then litros * gasolina

		else litros * alcool



main = do
	gasolina <- getLine
	alcool <- getLine
	litros <- getLine
	let x = read gasolina
	let y = read alcool
	let z = read litros
	putStrLn(show(posto x y z))