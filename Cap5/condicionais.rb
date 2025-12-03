nivel_log = "ERRO"

if nivel_log == "CRITICAL"
    puts "Alerta máximo"
elsif nivel_log ==  "ERRO"
  puts "Erro detetado. Registar incidente"
else
  puts "Log informativo"
end