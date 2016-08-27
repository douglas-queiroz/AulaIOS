//: Playground - noun: a place where people can play

import UIKit

var nome = "Douglas"
var numero: Float = 12_000_000.5
var doubleNum: Double

// ----------------- String --------------------------
var nome2 = nome + " Teste"
print("Nome: \(nome), numero: \(numero)")

// ------------------ Dictionary-----------------------

var dic = [String: String]()

// Add and Update
dic["Douglas"] = "teste"

// Remove
dic.removeValueForKey("Douglas")

// Init
var dicInit = ["Douglas": "Tes"]


// ------------------ Array -----------------------
// Init
let arrInt = ["Douglas", "Alex", "Luiz"]

var arr = [String]()

// Add
arr.append("Teste")

// Update
arr[0] = "Teste2"

// Remove
arr.removeAtIndex(0)


// --------------- Opicional --------------------

var idade: Int?
idade = 10

if let _ = idade {
    print("teste de variavel")
}

let resultado = idade! + 18

var altura: Int!

//var imc = altura * 2


// --------------- Funções -----------------------
func testeIdade(idade: Int = 0) {
    print("\(idade)")
}

func testeIdade(idade _ : Int) {
    var a = 2
    print("chamou")
}

testeIdade(10)


func variosParametro(params: Int...) {
    // Sintax For
    for item in params {
        print("\(item)")
    }
    
    for (index, item) in params.enumerate() {
        print("Index: \(index), Item \(item)")
    }
}

variosParametro(1,2,3,4,5)


// ----------------- Loop -----------------


let pessoas = ["Alex", "Douglas", "Luiz"]
var index = 0

while index < pessoas.count {
    print(pessoas[index])
    index += 1
}

var pessoasOptional: [String]?
pessoasOptional = ["Teste", "Teste 2", "Teste 3"]

while let pessoas = pessoasOptional {
    print("teste")
    
    pessoasOptional = nil
}

index = 0

repeat{
    print("teste")
    index += 1
}while index < 10

// ---------------------- Controler de fluxo ----------------------

if 1 == 1 && 1 == 1 || 2 < 3 {
    print("Teste")
}else if 1 != 3 {
    print("Teste 2")
}else{
    print("Teste 3")
}

let switchCase = 10

switch switchCase {
case 3:
    print("Entrou no 3")
case 2:
    print("Entrou no 2")
case 1:
    print("Entrou no 1")
default:
    print("Não entrou em nenhum")
}

let switchCaseString = "Sport"

switch switchCaseString {
    case "Santa cruz":
    print("Já perdeu")
    case "Nautico":
    print("Nem chegou")
    case "Sport":
    print("Campeao")
    default:
    print("Não sei")
}


// https://developer.apple.com/swift/


let tempo = 2.0
tempo.description