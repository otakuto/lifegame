size = 20
cell = replicate size $ replicate size True

draw [] = return ()
draw (x:xs) =
	do
	print [if y then 'O' else ' ' | y <- x]
	draw xs

main =
	do
	draw cell
	let a = [[2,3,4],[4,5,6],[1,5,6]] in print $ a !! 2 !! 2

