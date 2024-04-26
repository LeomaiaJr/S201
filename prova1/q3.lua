function multiplicarArray(array, numero)
    for i = 1, #array do
        array[i] = array[i] * numero
    end
    print(table.concat(array, ", "))
  end
  
function main()
    local array = {}
    for i = 30, 0, -1 do
        table.insert(array, i)
    end

    local x = io.read()

    multiplicarArray(array, x)
end

main()