module Exercicio1 where

data Erva = Erva { nomeE :: String, precoBase :: Double } deriving (Show)

calculaDosagem :: Double -> Int -> String
calculaDosagem peso idade
    | peso < 20.0 || idade < 5 = "10ml"
    | peso < 50.0 || idade < 12 = "25ml"
    | otherwise = "50ml"

ajustaPreco :: Erva -> Double
ajustaPreco (Erva "Ginseng" preco) = preco * 3.0
ajustaPreco (Erva "Lotus" preco) = preco * 1.5
ajustaPreco (Erva _ preco) = preco

descricaoErva :: Erva -> Double -> Int -> String
descricaoErva erva peso idade = 
    nomeE erva ++ " | Preco: " ++ show (ajustaPreco erva) ++ " | Dosagem: " ++ calculaDosagem peso idade

main :: IO ()
main = do
    let ginseng = Erva "Ginseng" 50.0
    let lotus = Erva "Lotus" 30.0
    let camomila = Erva "Camomila" 15.0
    
    putStrLn (descricaoErva ginseng 15.0 4)
    putStrLn (descricaoErva lotus 45.0 10)
    putStrLn (descricaoErva camomila 70.0 30)
