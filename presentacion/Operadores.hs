
infixr 5 <+>  
(<+>) :: Int -> Int -> Int  
a <+> b = a + 2 * b  


main :: IO ()
main = do
    let resultado = 3 <+> 4  
    putStrLn "Resultado:"
    print resultado  
