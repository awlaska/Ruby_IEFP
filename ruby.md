# Variáveis de Tipos de dados
**Strings** são letras, números, etc.
**Integer** são números inteiros
**Float** são números inteiros e com vírgula
**Boolean** é verdadeiro e falso

```
nome = "Ana"     # Texto (String)  
idade = 25         # Número inteiro (Integer)  
altura = 1.68      # Número decimal (Float)  
programa = true    # Booleano (true/false)  

puts nome # Devolve o nome  
puts idade # Devolve a idade
```

# Operações Básicas
o resto é o que sobra depois de dividir os números:
5%2 = 1 (2*2+**1**)
```
a = 10
b = 3

puts a + b  # Soma  
puts a - b  # Subtração  
puts a * b  # Multiplicação  
puts a / b  # Divisão  
puts a % b  # Resto da divisão  
```

# Condições (if/else)
se a idade for maior ou igual de 18, mostra que é maior de idade, senão, é menor de idade
```
idade = 18

if idade >= 18
  puts "És maior de idade!"
else
  puts "És menor de idade!"
end

```

# Ciclos
## while
enquanto o contador não chega a 5, ele adiciona 1
mostra a contagem 4 e acaba pois o contador chegou a 5
```
contador = 1

while contador <= 5
  puts "Contagem: #{contador}"
  contador += 1
end

```

## for
por cada numero entre 1 e 5, escreve o número
```
for numero in 1..5
  puts numero
end

```

# Array (listas)
```
frutas = ["maçã", "banana", "laranja"]

puts frutas[0]         # "maçã"
frutas << "morango"    # Adiciona ao fim
puts frutas.inspect    # Mostra a lista completa

```

# Métodos (Funções)
```
def saudacao(nome)
  puts "Olá, #{nome}!"
end

saudacao("Marta")
saudacao("João")

```

# Classes e Objetos
@nome e @idade são variáveis de instância, ou seja, pertencem a cada objeto criado.
```
class Pessoa
  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def apresentar
    puts "Olá, o meu nome é #{@nome} e tenho #{@idade} anos."
  end
end

pessoa1 = Pessoa.new("Inês", 22)
pessoa1.apresentar

```

