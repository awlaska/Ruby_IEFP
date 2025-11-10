# mensagem = "Verificacao concluida"
# contador = 5
# puts "#{mensagem} com #{contador} alertas"

# Contador encontrados

# def verificalog
#     status = "seguro"
#     puts "Status: #{status}"
# end

# verificalog

class Log
  def initialize(nome)
    @nome = nome
  end

  def mostrar
    puts "Analisando o ficheiro: #{@nome}"
  end
end

log1=Log.new("firewall.log")