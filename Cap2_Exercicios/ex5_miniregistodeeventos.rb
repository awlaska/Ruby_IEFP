class Simbolos
    attr_reader :tipo, :mensagem, :origem

    def initialize(tipo, mensagem, origem)
        @tipo = tipo
        @mensagem = mensagem
        @origem = origem
    end

    def mostrar
        puts "[#{@tipo.upcase}] #{@mensagem} | Origem: #{@origem}"
    end
end

s1 = Simbolos.new(:erro, "A palavra passe inserida está incorreta.", "Firewall")
s1.mostrar
s2 = Simbolos.new(:info, "A palavra passer terá de ser alterada.", "Servidor")
s2.mostrar
