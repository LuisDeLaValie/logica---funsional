-- Definición del tipo de árbol
data Arbol a = Nodo a (Arbol a) (Arbol a)
             | ArbolVacio
             deriving (Show)

-- Función para insertar un elemento en el árbol
insertar :: Ord a => a -> Arbol a -> Arbol a
insertar x ArbolVacio = Nodo x ArbolVacio ArbolVacio
insertar x (Nodo valor izq der)
    | x < valor  = Nodo valor (insertar x izq) der
    | otherwise  = Nodo valor izq (insertar x der)

-- Función para buscar un elemento en el árbol
buscar :: Ord a => a -> Arbol a -> Bool
buscar _ ArbolVacio = False
buscar x (Nodo valor izq der)
    | x == valor = True
    | x < valor  = buscar x izq
    | otherwise  = buscar x der

-- Ejemplo de uso
main :: IO ()
main = do
    let arbol = foldr insertar ArbolVacio [4, 2, 6, 1, 3, 5, 7]  -- Construir un árbol
    putStrLn "Árbol:"
    print arbol
    putStrLn "¿El valor 5 está en el árbol?"
    print (buscar 5 arbol)
    putStrLn "¿El valor 8 está en el árbol?"
    print (buscar 8 arbol)
