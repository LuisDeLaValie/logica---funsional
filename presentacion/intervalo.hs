-- Definición de un tipo para representar un intervalo
type Intervalo = (Int, Int)

-- Función para verificar si un número está dentro de un intervalo
estaEnIntervalo :: Int -> Intervalo -> Bool
estaEnIntervalo x (inferior, superior) = x >= inferior && x <= superior

main = do
    let intervalo = (10, 20)  -- Definir un intervalo del 10 al 20
    print $ estaEnIntervalo 15 intervalo  -- Verificar si 15 está dentro del intervalo
    print $ estaEnIntervalo 5 intervalo   -- Verificar si 5 está dentro del intervalo
