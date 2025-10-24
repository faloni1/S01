class MicroondasUnidade
  def aquecer_por
    puts "Unidade: aquecendo... pronto."
  end
end

class DMail
  attr_reader :conteudo, :hora_envio
  def initialize(conteudo, hora_envio)
    @conteudo = conteudo
    @hora_envio = hora_envio
  end

  def to_s
    "#{hora_envio} - #{conteudo}"
  end
end

class TelefoneDeMicroondas
  def initialize
    @unidade = MicroondasUnidade.new
    @dmails = []
  end

  def enviar_dmail
    puts "Conteúdo do D-Mail:"
    conteudo = gets.chomp
    puts "Hora de envio (formato HH:MM):"
    hora = gets.chomp
    @unidade.aquecer_por
    d = DMail.new(conteudo, hora)
    @dmails << d
    puts "D-Mail enviado: #{d}"
  end

  def listar_dmails(horario_corte)
    @dmails.select { |d| d.hora_envio > horario_corte }
  end
end

telefone = TelefoneDeMicroondas.new
puts "Deseja enviar um D-Mail? (s/n)"
resp = gets.chomp.downcase
if resp == 's'
  telefone.enviar_dmail
end
puts "Informe horário de corte para listar D-Mails (HH:MM):"
corte = gets.chomp
lista = telefone.listar_dmails(corte)
puts "D-Mails posteriores a #{corte}:"
lista.each { |d| puts d.to_s }
