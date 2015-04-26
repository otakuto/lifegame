import Foreign.Marshal.Utils

size = 20
cell = replicate size $ replicate size True

draw = mapM_ (\xs -> putStrLn [if x then 'O' else ' ' | x <- xs])

main =
	do
	draw cell
	let range = [(x, y) | x <- [0..(size - 1)], y <- [0..(size - 1)]]
	let search = [(x, y) | x <- [-1..1], y <- [-1..1]]
	print range
	print search
	print . sum $ map (\(x, y) -> fromBool $ cell !! y !! x) range
