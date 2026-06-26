module Exercicio2 where

data Periculosidade = Baixa | Media | Alta deriving (Eq, Show)

data Criatura = Criatura { nomeC :: String, ambiente :: String, periculosidade :: Periculosidade, vidaMedia :: Int } deriving (Show)

filtraPorPerigo :: [Criatura] -> [Criatura]
filtraPorPerigo = filter (\c -> periculosidade c /= Baixa)

relatorioProfundidade :: [Criatura] -> [String]
relatorioProfundidade criaturas = 
    map (\c -> nomeC c ++ ": Vive em " ++ ambiente c) (filter (\c -> ambiente c == "Deep") criaturas)

descricaoCriatura :: Criatura -> String
descricaoCriatura c = 
    nomeC c ++ " | Ambiente: " ++ ambiente c ++ " | Periculosidade: " ++ show (periculosidade c)

main :: IO ()
main = do
    let peeper = Criatura "Peeper" "Safe Shallows" Baixa 5
    let reaper = Criatura "Reaper Leviathan" "Dunes" Alta 100
    let crabsquid = Criatura "Crabsquid" "Deep" Media 20
    let ghost = Criatura "Ghost Leviathan" "Deep" Alta 500
    let catalogoCriaturas = [peeper, reaper, crabsquid, ghost]

    mapM_ (putStrLn . descricaoCriatura) catalogoCriaturas
    mapM_ (putStrLn . descricaoCriatura) (filtraPorPerigo catalogoCriaturas)
    mapM_ putStrLn (relatorioProfundidade catalogoCriaturas)
