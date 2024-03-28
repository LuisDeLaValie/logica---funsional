-- Definición de una lista de números enteros
miLista :: [Int]
miLista = [1, 2, 3, 4, 5]

-- Función para sumar todos los elementos de una lista
sumarLista :: [Int] -> Int
sumarLista [] = 0  -- Caso base: la lista está vacía, la suma es cero
sumarLista (x:xs) = x + sumarLista xs  -- Caso recursivo: sumar el primer elemento y llamar recursivamente a la función con el resto de la lista

-- Ejemplo de uso
main :: IO ()
main = do
    putStrLn "Lista:"
    print miLista
    putStrLn "Suma de la lista:"
    print (sumarLista miLista)
