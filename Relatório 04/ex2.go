package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scanln(&a, &b, &c)

	if a+b > c && a+c > b && b+c > a {
		switch {
		case a == b && b == c:
			fmt.Println("Equilátero")
		case a == b || a == c || b == c:
			fmt.Println("Isósceles")
		default:
			fmt.Println("Escaleno")
		}
	} else {
		fmt.Println("Erro")
	}
}
