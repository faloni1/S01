data Servico = Servico {
    nomeServico :: String,
    tipoServico :: String,
    precoServico :: Double
} deriving (Show, Eq)

data StatusAtendimento = EmAndamento | Finalizado | CanceladoAtendimento deriving (Show, Eq)

data Atendimento = Atendimento [Servico] StatusAtendimento deriving (Show)

totalServicos :: [Servico] -> Double
totalServicos servicos = sum (map precoServico servicos)

valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento (Atendimento servicos status)
    | status == CanceladoAtendimento = 0.0
    | length servicos > 3 = total * 1.25
    | otherwise = total
  where
    total = totalServicos servicos

primeiroServico :: Atendimento -> String
primeiroServico (Atendimento [] _) = "Nenhum servico"
primeiroServico (Atendimento (s:_) _) = nomeServico s

main :: IO ()
main = do
    let s1 = Servico "Banho Quente" "Limpeza" 50.0
    let s2 = Servico "Refeicao" "Alimentacao" 30.0
    let s3 = Servico "Massagem" "Relaxamento" 80.0
    let s4 = Servico "Cha Especial" "Bebida" 20.0
    let a1 = Atendimento [s1, s2, s3, s4] Finalizado
    let a2 = Atendimento [s1, s2] CanceladoAtendimento
    print (valorFinalAtendimento a1)
    print (primeiroServico a1)
    print (valorFinalAtendimento a2)
    print (primeiroServico a2)
