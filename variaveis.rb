# mensagem = "Verificacao concluida"
# contador = 5
# puts "#{mensagem} com #{contador} alertas"

# Contador encontrados

# def verificalog
#     status = "seguro"
#     puts "Status: #{status}"
# end

# verificalog

# Variáveis de Instância
# Armazenam o estado de um objeto e começam com @
class Log                 # Declara uma nova classe (um modelo ou um blueprint) chamada Log
  def initialize(nome)    # Construtor da classe
    @nome = nome          # Variável de instância para armazenar o nome do ficheiro de log
  end

  def mostrar             # Método de Instância para mostrar o nome do ficheiro de log
    puts "Analisando o ficheiro: #{@nome}"
  end
end

log1=Log.new("firewall.log")    # Cria uma nova instância da classe Log com o nome do ficheiro "firewall.log"
log1.mostrar                    # Imprime a mensagem com o nome do ficheiro de log
