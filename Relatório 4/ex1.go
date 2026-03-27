package main

import (
	"fmt"
)

func ValidarUsuario(username string) (bool, string) {
	if len(username) >= 8 {
		return true, "Usuário criado com sucesso!"
	}
	return false, "Erro: O nome de usuário é muito curto"
}

func main() {
	var nome string
	for {
		fmt.Print("Digite o nome de usuário: ")
		fmt.Scanln(&nome)

		valido, mensagem := ValidarUsuario(nome)
		fmt.Println(mensagem)

		if valido {
			break
		}
	}
}
