nivel_log = "ERRO"

if nivel_log == "CRITICAL"
    puts "Alerta máximo"
elsif nivel_log ==  "ERRO"
  puts "Erro detetado. Registar incidente"
else
  puts "Log informativo"
end

puts "Análise concluida" if true
log_vazio = false
puts "Iniciando análise..." unless log_vazio


codigo_http = 404
case codigo_http
when 200..299
  puts "Sucesso"
when 300..399
  puts "Redirecionamento"
when 400
  puts "Erro: Requisição inválida"
when 401, 403
  puts "Acesso negado"
when 404
  puts "Recurso não encontrado"
else
  puts "Erro desconhecido"
end


i = 0
while i<3
    puts "Verificando evento #{i}"
    i += 1
end


contador = 0
until contador == 3
    puts "Tentativa #{contador}"
    contador += 1
end


for nivel in ["INFO", "WARN", "ERRO"]
    puts "nível de log: #{nivel}"
end


loop do
  print "Digite um comando (ou 'sair'): "
  entrada = gets.chomp
  break if entrada == "sair"
  puts "Executando: #{entrada}"
end


## Controlo de fluxo
linhas_processadas = 0
File.foreach("sistema.log") do |linha|
    next if linha.strip.empty?
    break if linhas_processadas >= 5

    puts "Linha: #{linha.strip}"
    linhas_processadas += 1
end


File.foreach("sistema.log") do |linha|
    if linha.include?("CRITICAL")
      puts "[ALERTA] #{linha.strip}"
    elsif linha.include?("ERRO")
      puts "[ERRO] #{linha.strip}"
    elsif linha.include?("WARN")
      puts "[AVISO] #{linha.strip}"
    end
end


