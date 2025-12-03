# exercicio 1
niveis = ["INFO", "WARN", "ERRO", "CRITICAL"]
niveis.each do |linha|
    puts "#{linha}"
end

# exercicio 2
log = {
  data: "2025-10-31",
  nivel: "ERRO",
  mensagem: "Conexão perdida"
}

puts "data: #{log[:data]}, nivel: #{log[:nivel]}, mensagem: #{log[:mensagem]}"

# exercicio 3
erros = [] 

File.foreach("app.log") do |linha|
  if linha.include?("ERRO")
      erros << linha.strip
  end
end

File.open("erros.txt", "w") do |f|
    f.puts "--- Relatórios de Erros ---"
    erros.each{ |e| f.puts e}
end

# exercicio 4
filtro_warn = Proc.new { |linha| linha.include?("WARN")}

logs = ["INFO", "ERRO", "WARN"]
erros = logs.select(&filtro_warn)
puts erros.inspect