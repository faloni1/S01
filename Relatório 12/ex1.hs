data Bebida = Bebida {
    nome :: String,
    tipo :: String,
    preco :: Double
} deriving (Show, Eq)

data StatusPedido = Aberto | Entregue | Cancelado deriving (Show, Eq)

data Pedido = Pedido [Bebida] StatusPedido deriving (Show)

valorTotalPedido :: Pedido -> Double
valorTotalPedido (Pedido bebidas status)
    | status == Cancelado = 0.0
    | otherwise = sum (map preco bebidas)

primeiraBebida :: Pedido -> String
primeiraBebida (Pedido [] _) = "Nenhuma bebida"
primeiraBebida (Pedido (b:_) _) = nome b

main :: IO ()
main = do
    let b1 = Bebida "Cafe" "Quente" 5.0
    let b2 = Bebida "Cha" "Quente" 4.0
    let p1 = Pedido [b1, b2] Entregue
    let p2 = Pedido [b1] Cancelado
    print (valorTotalPedido p1)
    print (valorTotalPedido p2)
