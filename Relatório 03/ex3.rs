use std::io;

fn imprimir_multiplos(numero: i32, limite_inferior: i32, limite_superior: i32) {
    for i in limite_inferior..=limite_superior {
        if i % numero == 0 {
            println!("{}", i);
        }
    }
}

fn main() {
    let mut num = String::new();
    let mut inf = String::new();
    let mut sup = String::new();

    io::stdin().read_line(&mut num).unwrap();
    io::stdin().read_line(&mut inf).unwrap();
    io::stdin().read_line(&mut sup).unwrap();

    let num: i32 = num.trim().parse().unwrap();
    let inf: i32 = inf.trim().parse().unwrap();
    let sup: i32 = sup.trim().parse().unwrap();

    imprimir_multiplos(num, inf, sup);
}
