puts 123.class
puts 3.14.class
puts "log".class
puts true.class

if 0
    puts "0 é verdadeiro em Ruby"
end

if nil
    puts "Isto não será exibido"
else
  puts "nil é falso em Ruby"
end

nivel = :erro

if nivel == :erro
    puts "Evento crítico detetado!"
end

linha = nil
if linha
    puts "A linha é verdadeira"
end
unless linha
    puts "A linha é falsa"
end

linha = ""
if linha
    puts "A linha é verdadeira"
else
  puts "A linha é falsa"
end

nivel = :aviso

if nivel == :erro
  puts "Evento crítico"
elsif nivel == :aviso
  puts "Evento de aviso"
else
  puts "Evento informatico"
end

nivel = :inf

unless nivel == :erro
  puts "Sem falhar detetadas"
end

puts "Acesso autorizado" unless nivel == :erro

linha = "2025-11-16 10:12:01 ERRO Falha na autenticação"

if linha.empty?
  puts "Linha vazia - ignorada"
elsif linha.include?("ERRO")
  puts "Evento crítico detetado!"
elsif linha.include?("WARN")
  puts "Aviso registado"
else
  puts "Evento normal"
end


a = 10
b = 3.5
puts a + b
puts a * 2
puts b.round

numero = -5
resultado = numero.abs
puts resultado

numero = 4
puts "Número par? #{numero.even?}"

numero = 3
puts "Número ímpar? #{numero.odd?}"

valor = "5"
puts valor.to_i

valor = "3.14"
puts valor.to_f

numero = 10
puts numero.to_f

codigo_http = "404"
puts codigo_http.to_i == 404
puts codigo_http == 404

dias = 1..5
puts dias.to_a

letras = 'a'...'e'
puts letras.to_a

intervalo = 1..10
puts intervalo.include?(7)
puts intervalo.member?(15)
puts intervalo.include?(10)

codigo = 404
if(200..299).include?(codigo)
  puts "Sucesso"
else
  puts "Erro HTTP detetado"
end

letras = 'a'..'e'
puts letras.to_a

nome = "Analista"
puts "Bem vindo, #{nome}"
puts 'Bem vindo, #{nome}'
puts "Bem vindo, " + nome + " no seu primeiro dia de aulas"

texto = "Cibersegurança"
puts texto.length

texto = "Cibersegurança curso em segurança na net"
puts texto.upcase

mensagem = "ALERTA DE ATAQUE"
puts mensagem.downcase

linha = "2025-22-16 ERRO Falha na autenticação"
puts "Nesse log aparece a palavra ERRO?"
puts linha.include?("ERRO")

entrada = "   utilizador"
puts entrada.strip

