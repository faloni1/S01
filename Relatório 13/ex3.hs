module Exercicio3 where

data TipoItem = Arma | Pocao | Artefato deriving (Eq, Show)

data Item = Item { nomeI :: String, tipo :: TipoItem, precoI :: Double, forcaMagica :: Double } deriving (Show)

adicionalImposto :: Double -> Double
adicionalImposto preco = preco * 1.15

bonusMaldicao :: Double -> Double
bonusMaldicao forca
    | forca > 80 = forca * 1.5
    | otherwise = forca

descricaoVenda :: Item -> String
descricaoVenda item = 
    nomeI item ++ " | Preco Final: " ++ show (precoI item) ++ " | Forca Magica: " ++ show (forcaMagica item)

processaVenda :: [Item] -> [String]
processaVenda itens = 
    map descricaoVenda (map aplicarBonus (map aplicarImposto (filter (\i -> tipo i == Arma) itens)))
  where
    aplicarImposto i = i { precoI = adicionalImposto (precoI i) }
    aplicarBonus i = i { forcaMagica = bonusMaldicao (forcaMagica i) }

main :: IO ()
main = do
    let espada = Item "Espada Longa" Arma 100.0 50.0
    let machado = Item "Machado Amaldicoado" Arma 200.0 90.0
    let pocao = Item "Pocao de Vida" Pocao 20.0 10.0
    let cajado = Item "Cajado Magico" Arma 300.0 85.0
    let anel = Item "Anel Antigo" Artefato 500.0 100.0
    let catalogoItens = [espada, machado, pocao, cajado, anel]

    mapM_ putStrLn (processaVenda catalogoItens)
