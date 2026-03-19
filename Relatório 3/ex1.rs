use std::io;

fn verificar_senha(senha: &str) -> bool {
    if senha.len() < 10 {
        return false;
    }

    let mut contagem_numeros = 0;
    let mut tem_maiuscula = false;

    for c in senha.chars() {
        if c.is_digit(10) {
            contagem_numeros += 1;
        }
        if c.is_ascii_uppercase() {
            tem_maiuscula = true;
        }
    }

    contagem_numeros >= 2 && tem_maiuscula
}

fn main() {
    loop {
        let mut senha = String::new();
        io::stdin().read_line(&mut senha).expect("Erro ao ler");
        let senha = senha.trim();

        if verificar_senha(senha) {
            println!("A senha é válida, seja bem vindo!");
            break;
        }
    }
}
