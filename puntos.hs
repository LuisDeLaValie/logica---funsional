 -- Definición del tipo de datos Punto
data Punto = Punto { x :: Double, y :: Double } deriving (Show)

-- Función para calcular la distancia entre dos puntos
distanciaEntrePuntos :: Punto -> Punto -> Double
distanciaEntrePuntos p1 p2 = sqrt ((x2 - x1) ^ 2 + (y2 - y1) ^ 2)
    where
        x1 = x p1
        y1 = y p1
        x2 = x p2
        y2 = y p2

-- Ejemplo de uso
main :: IO ()
main = do
    let punto1 = Punto { x = 1.0, y = 2.0 }
        punto2 = Punto { x = 4.0, y = 6.0 }
        distancia = distanciaEntrePuntos punto1 punto2
    putStrLn $ "La distancia entre los puntos " ++ show punto1 ++ " y " ++ show punto2 ++ " es: " ++ show distancia