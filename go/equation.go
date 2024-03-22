package main

import (
    "fmt"
    "math"
)

func main() {
    var a, b, c float64
    var delta float64
    var escolha string

    for {
        fmt.Print("Primeiro número (a): ")
        fmt.Scan(&a)
        fmt.Print("Segundo número (b): ")
        fmt.Scan(&b)
        fmt.Print("Terceiro número (c): ")
        fmt.Scan(&c)

        delta = b*b - 4*a*c

        if delta < 0 {
            fmt.Println("Sem raízes reais.")
        } else if delta > 0 {
            raiz1 := (-b + math.Sqrt(delta)) / (2 * a)
            raiz2 := (-b - math.Sqrt(delta)) / (2 * a)
            fmt.Printf("Raiz 1: %f\n", raiz1)
            fmt.Printf("Raiz 2: %f\n", raiz2)
        } else {
            raiz := (-b + math.Sqrt(delta)) / (2 * a)
            fmt.Printf("Raízes iguais: %f\n", raiz)
        }

        fmt.Print("Deseja calcular novas raízes? (s/n): ")
        fmt.Scan(&escolha)
        if escolha != "s" {
            break
        }
    }
}