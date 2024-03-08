function calcularTabuada(numero)
    for i = 1, 10 do
        print(numero .. " * " .. i .. " = " .. numero * i)
    end
  end
  
  print("Digite um número para calcular a tabuada:")
  local numero = io.read("*n")
  
  calcularTabuada(numero)