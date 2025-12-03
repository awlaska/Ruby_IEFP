# 1
numero = 25
resultado = numero.abs
puts resultado

# 2
numero = 12

if numero.even?
  puts "É par"
else
  puts "Não é par"
end

# 3
numero = 12

if numero.odd?
  puts "É impar"
else
  puts "Não é ímpar"
end

# 4
numero = "200"
inteiro = numero.to_i
puts inteiro

# 5
numero = "3.75"
decimal = numero.to_f
puts decimal

# 6
palavra = "moitorizacao"
puts palavra.length
palavra = "monitorizacao computador"
puts palavra.length

# 7
estado = "porta fechada"
maiusculas = estado.upcase
puts maiusculas

# 8
estado = "CONEXÃO INTERROMPIDA"
minusculas = estado.downcase
puts minusculas

# 9
alerta = "ALERTA: Módulo não encontrado"
if alerta.include?("ALERTA")
  puts "Contém \"ALERTA\""
else
  puts "Não contém \"ALERTA\""
end

if alerta.include?("ERRO")
  puts "Contém \"ERRO\""
else
  puts "Não contém \"ERRO\""
end

# 10
path = " /var/log/auth.log "
limpo = path.strip()
puts limpo

# 11
log = "ERRO;Falha de login;192.168.1.20"
array = log.split(";")
puts array.inspect

# 12
log = "AVISO: aviso de segurança"
puts log.sub("aviso", "notificação")

# 13
log = "login falhado, login falhado, login falhado"
puts log.gsub("login falhado", "tentativa inválida")