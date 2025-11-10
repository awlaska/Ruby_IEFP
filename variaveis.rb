# # 2.1. O que são variáveis em Ruby
mensagem = "Verificacao concluida"
contador = 5
puts "#{mensagem} com #{contador} alertas"

# # 2.3.  Variáveis Locais
def verificalog
    status = "seguro"
    puts "Status: #{status}"
end

verificalog


# # 2.4. Variáveis de Instância
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

# # 2.5. Variáveis da Classe
class Log1
    @@total_logs = 0

    def initialize(nome)
            @@total_logs += 1
    end

    def self.total
            puts "Total de logs analisados: #{@@total_logs}"
    end
end

Log1.new("auth.log")
Log1.new("newtwork.log")
Log1.total

# # 2.6. Variáveis Globais
$versao_script = "1.0"

def mostrar_versao
    puts "Versão atual: #{$versao_script}"
end

mostrar_versao

# # 2.7. Constantes
PI = 3.1419
NOME_CURSO = "Ciberseguranca Ruby"

puts NOME_CURSO

# # 2.8. Símbolos
log = {nivel: :erro, mensagem: "Falha de autenticação"}
puts log[:nivel]

