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

# # 2.9. Diferença entre String e Símbolo
puts "erro".object_id
puts "erro".object_id
puts :erro.object_id
puts :erro.object_id

# # 2.10. Aplicação Prática em Cibersegurança
class EventoSeguranca
    attr_reader :tipo, :mensagem

    def initialize(tipo, mensagem)
        @tipo = tipo
        @mensagem = mensagem
    end

    def mostrar
        puts "[#{@tipo.upcase}] #{@mensagem}"
    end
end

e1 = EventoSeguranca.new(:erro, "Acesso não autorizado detetado")
e1.mostrar

# # 2.11 Exercícios Práticos
# # # 2.11.1.
$AUTOR = "Sofia"

def mostrar_autor
    puts "Autor: #{$AUTOR}"
end

mostrar_autor

# # # 2.11.2.
class Sistema
    @@total_alertas = 0

    def initialize(nome)
        @@total_alertas += 1
    end

    def adicionar_alerta()
        @@total_alertas += 1
    end

    def self.mostrar_total()
        puts "Total de alertas: #{@@total_alertas}"
    end
end

Sistema.new("A1")
Sistema.new("A2")
Sistema.mostrar_total

# # # 2.11.3.
e1 = EventoSeguranca.new(:erro, "Acesso não autorizado detetado")
e1.mostrar
e2 = EventoSeguranca.new(:info, "Está a aceder a uma pasta pública.")
e2.mostrar
e3 = EventoSeguranca.new(:aviso, "Acesso restrito, não partilhe com externos.")
e3.mostrar