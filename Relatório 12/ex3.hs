data Banda = Banda {
    nomeBanda :: String,
    genero :: String,
    cache :: Double
} deriving (Show, Eq)

data StatusEvento = Ativo | Encerrado | CanceladoEvento deriving (Show, Eq)

data Evento = Evento [Banda] StatusEvento deriving (Show)

custoTotalEvento :: Evento -> Double
custoTotalEvento (Evento bandas status)
    | status == CanceladoEvento = 0.0
    | otherwise = sum (map cache bandas) * 1.20

bandaAbertura :: Evento -> String
bandaAbertura (Evento [] _) = "Nenhuma banda"
bandaAbertura (Evento (b:_) _) = nomeBanda b

bandaEncerramento :: Evento -> String
bandaEncerramento (Evento [] _) = "Nenhuma banda"
bandaEncerramento (Evento bandas _) = nomeBanda (last bandas)

main :: IO ()
main = do
    let b1 = Banda "Title Fight" "Hardcore" 3000.0
    let b2 = Banda "American Football" "Midwest Emo" 2500.0
    let e1 = Evento [b1, b2] Ativo
    let e2 = Evento [b1] Encerrado
    let e3 = Evento [b2] CanceladoEvento
    print (custoTotalEvento e1)
    print (bandaAbertura e1)
    print (bandaEncerramento e1)
    print (custoTotalEvento e2)
    print (bandaAbertura e2)
    print (bandaEncerramento e2)
    print (custoTotalEvento e3)
    print (bandaAbertura e3)
    print (bandaEncerramento e3)
