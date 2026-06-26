module Exercicio4 where

data Elemento = Pyro | Hydro | Cryo | Electro | Anemo deriving (Eq, Show)

data Local = Local { nomeL :: String, elemento :: Elemento, dificuldade :: Int, recompensa :: Double } deriving (Show)

bonusElemental :: Local -> Double
bonusElemental loc
    | elemento loc == Pyro || elemento loc == Electro = recompensa loc * 1.20
    | elemento loc == Cryo = recompensa loc * 1.10
    | otherwise = recompensa loc

valeAPena :: Local -> Bool
valeAPena loc = bonusElemental loc > 500 && dificuldade loc <= 3

rotaDeFarm :: [Local] -> [String]
rotaDeFarm locais = 
    map (\l -> nomeL l ++ " - Recompensa: " ++ show (bonusElemental l)) (filter valeAPena locais)

main :: IO ()
main = do
    let dominio1 = Local "Dominio Fogo" Pyro 2 450.0
    let dominio2 = Local "Dominio Gelo" Cryo 4 600.0
    let dominio3 = Local "Dominio Agua" Hydro 3 550.0
    let dominio4 = Local "Dominio Raio" Electro 3 450.0
    let dominio5 = Local "Dominio Vento" Anemo 1 300.0
    let catalogoLocais = [dominio1, dominio2, dominio3, dominio4, dominio5]

    mapM_ putStrLn (rotaDeFarm catalogoLocais)
