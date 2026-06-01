class MicroondasTelefone
  def ativar
    puts "Banana Verde detectada! O Microondas-Telefone (nome provisório) está operando!"
  end
end

class Relatorio
  attr_reader :nome_projeto, :autor

  def initialize(nome_projeto, autor)
    @nome_projeto = nome_projeto
    @autor = autor
  end
end

class LabRegistro
  def initialize
    @microondas_telefone = MicroondasTelefone.new
    @relatorios = []
  end

  def adicionar_registro(nome_projeto, autor)
    @microondas_telefone.ativar
    @relatorios << Relatorio.new(nome_projeto, autor)
  end

  def listar_experimentos
    @relatorios.each do |relatorio|
      puts "Projeto: #{relatorio.nome_projeto} - Autor: #{relatorio.autor}"
    end
  end
end

lab_registro = LabRegistro.new
lab_registro.adicionar_registro("KRR", "Okabe Rintaro")
lab_registro.adicionar_registro("CERN Hack", "Hashida Itaru")
lab_registro.listar_experimentos
