## operador
linha = "ERRO: Falha na autenticação"
if linha =~ /ERRO/
    puts "Evento de erro detetado"
end


m = "ERRO: Conexão perdida" =~ /ERRO/ # -> 0
puts m[0]

regex = /erro/i
m = regex.match("ERRO: Falha no sistema")
puts m[0]


# Erro: 
# Linha 1
# Linha 2
#
# m=/ERRO:.+/m.match("ERRO: \nLinha 1\nLinha 2")
# puts m[0]


m = /\d{4}-\d{2}-\d{2}/.match("Data: 2025-01-26")

puts m[0]


puts /a.c/.match("a-c")


puts /m....a/.match("marcia")


puts /^ERRO/i.match("ERRo: Falhou")


puts /ERRO$/i.match("Alerta: ERRO")


puts /\d\d/.match("123 abc")


puts /\w+/.match("_user123")


puts /\w+\s+\w+/.match("Hello World")


puts /\d/.match("42")


puts /\a/.match("aaa")


linha = "2025-10-31 10:22:45 ERRO Falha no login"
linha =~ /(\d{4}-\d{2}-\d{2})\s(\d{2}:\d{2}:\d{2})\s(\w+)/

puts "Data: #{$1}"
puts "Hora: #{$2}"
puts "Tipo: #{$3}"


File.foreach("dados.log") do |linha|
  if linha =~ /(\d{4}-\d{2}-\d{2})\s(\d{2}:\d{2}:\d{2})\s(\w+)\s(.+)/
 
  data =$1
  hora= $2
  nivel= $3
  mensagem= $4
puts "[#{nivel}] #{data} #{hora} #{nivel} - #{mensagem}"
  end
end