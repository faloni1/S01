class BebidaAfterlife
  attr_accessor :nome

  def initialize(nome, custo_base)
    @nome = nome
    self.custo_base = custo_base
  end

  def custo_base
    @custo_base
  end

  def custo_base=(valor)
    @custo_base = valor if valor > 0
  end

  def preco_total
    @custo_base
  end

  def to_string
    "Bebida: #{@nome} | Valor Final: $#{preco_total}"
  end
end

class DrinkIconico < BebidaAfterlife
  attr_accessor :nivel_notoriedade

  def initialize(nome, custo_base, nivel_notoriedade)
    super(nome, custo_base)
    @nivel_notoriedade = nivel_notoriedade
  end

  def preco_total
    custo_base + (@nivel_notoriedade * 8)
  end
end

bebidas = [
  DrinkIconico.new("Johnny Silverhand", 50, 10),
  DrinkIconico.new("David Martinez", 35, 9),
  DrinkIconico.new("Jackie Welles", 40, 8)
]

bebidas.each do |bebida|
  puts bebida.to_string
end
