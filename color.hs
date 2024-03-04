
-- Definición del tipo de datos Color
data Color = Rojo | Verde | Azul | Amarillo | Morado | Cian deriving (Show, Eq)

-- Función para mezclar colores
mezclarColores :: Color -> Color -> Color 
mezclarColores Rojo Verde = Amarillo
mezclarColores Rojo Azul = Morado
mezclarColores Verde Azul = Cian
mezclarColores c1 c2 = if c1 == c2 then c1 else error "No se pueden mezclar estos colores"

-- Ejemplo de uso
main :: IO ()
main = do
    let color1 = Rojo
        color2 = Verde
        colorMezclado = mezclarColores color1 color2
    putStrLn $ "Color mezclado: " ++ show colorMezclado