use std::io;

fn main() {
    
    println!("Digite um número: ");
    let mut input = String::new();

    io::stdin()
        .read_line(&mut input)
        .expect("Falha ao ler entrada");

    
    let num: i32 = input.trim().parse().expect("Por favor, digite um número!");

    
    let arr = fill_array(num);

    
    println!("{:?}", arr);
}

fn fill_array(num: i32) -> [i32; 10] {
    let mut arr = [0; 10];

    for i in 0..arr.len() {
        arr[i] = num * i as i32; 
    }

    arr
}