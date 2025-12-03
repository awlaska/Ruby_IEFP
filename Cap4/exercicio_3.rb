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