-- Definición de una función que devuelve una lista infinita de números
naturales :: [Int]
naturales = [1..]

-- Función que toma los primeros n números de una lista y los suma
sumaNaturales :: Int -> Int
sumaNaturales n = sum (take n naturales)

-- Función principal que imprime la suma de los primeros 10 números naturales
main :: IO ()
main = print (sumaNaturales 10)
