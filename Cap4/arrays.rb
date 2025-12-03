## arrays
alertas = ["INFO", "WARN", "ERRO"]
puts alertas[0] # INFO
puts alertas[2] # ERRO


alertas << "CRITICAL"     # adiciona ao fim
alertas.unshift("DEBUG")  # adiciona ao inicio
alertas.pop               # remove o ultimo
alertas.shift             # remove o primeiro


puts alertas.size             # numero de elementos
puts alertas.include?("ERRO") # verifica a presenca
puts alertas.reverse          # reverte a ordem
puts alertas.sort             # ordena por alfabeto


linhas  = ["INFO: OK", "ERRO: Falha", "WARN: Cache cheia"]
linhas.each do |linha|
    puts "Processando -> #{linha}"
end


codigos = [200, 404, 500]
mensagens = codigos.map { |c| c < 400 ? "Sucesso" : "Falha" }
puts mensagens.inspect


erros = linhas.select {|linha| linha.include?("ERRO")}
puts erros.inspect


## HASH
# criacao
evento = {
  data: "2025-10-31",
  nivel: "ERRO",
  mensagem: "Conexão perdida"
}


# acesso
puts evento[:nivel]     # ERRO
puts evento[:mensagem]  #Conexão perdida


puts evento.keys
puts evento.values
puts evento.has_key?(:nivel)
puts evento.delete(:nivel)


config_padrao = {porta: 22, ativo: true}
config_local = {porta:8080}


config_final = config_padrao.merge(config_local)
puts config_final


## Ficheiros
conteudo = File.read("sistema.log")
puts conteudo.length

File.foreach("sistema.log") do |linha|
  puts linha if linha.include?("ERRO")
end


File.open("resultado.txt", "w") do |f|
  f.puts "Relatório de Análise"
  f.puts "Total de eventos: 20"
end


erros = []

File.foreach("sistema.log") do |linha|
  if linha.include?("ERRO")
      erros << linha.strip
  end
end


File.open("erros_extraidos.txt", "w") do |f|
    f.puts "--- Relatórios de Erros ---"
    erros.each{ |e| f.puts e}
end


3.times do |i|
    puts "Tentativa #{i+1}"
end


filtro_erro = Proc.new { |linha| linha.include?("ERRO")}

logs = ["INFO", "ERRO", "WARN"]
erros = logs.select(&filtro_erro)
puts erros.inspect


## Lambda
mensagem = -> (nome) {puts "Olá, #{nome}"}
mensagem.call("Analista")


File.foreach("sistema.log") do |linha|
    next unless linha.include?("DEBUG")
    puts "ALERTA: #{linha.strip}"
end