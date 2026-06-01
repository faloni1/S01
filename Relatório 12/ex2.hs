data Item = Item {
    nomeItem :: String,
    categoria :: String,
    precoItem :: Double
} deriving (Show, Eq)

data StatusCompra = Pendente | Concluida | Cancelada deriving (Show, Eq)

data Compra = Compra [Item] StatusCompra deriving (Show)

totalItens :: [Item] -> Double
totalItens itens = sum (map precoItem itens)

valorFinal :: Compra -> Double
valorFinal (Compra itens status)
    | status == Cancelada = 0.0
    | total > 200.0 = total * 0.90
    | otherwise = total
  where
    total = totalItens itens

main :: IO ()
main = do
    let i1 = Item "Master Sword" "Arma" 150.0
    let i2 = Item "Hylian Shield" "Escudo" 80.0
    let i3 = Item "Pocao" "Consumivel" 20.0
    let compra = Compra [i1, i2, i3] Concluida
    print (valorFinal compra)
