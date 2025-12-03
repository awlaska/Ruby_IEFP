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

