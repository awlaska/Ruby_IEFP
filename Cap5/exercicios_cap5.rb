# exercício 1
codigo_http = 404
case codigo_http
when 200..299
  puts "2xx"
when 300..399
  puts "3xx"
when 400..499
  puts "4xx"
when 500..599
  puts "5xx"
else
  puts "Erro desconhecido"
end

# exercício 2
i = 0
while i<10
  if i%2!=0
    puts "#{i}"
  end
  i += 1
end

# exercicio 3
File.foreach("sistema.log") do |linha|
  if linha.include?("ALERTA")
    puts "[ALERTA] #{linha.strip}"
  elsif linha.include?("ERRO")
    puts "[ERRO] #{linha.strip}"
  else next
  end
end

# exercício 4
File.foreach("sistema.log") do |linha|
    next if linha.strip.empty?
    break if linha == "END"

    puts "Linha: #{linha.strip}"
end