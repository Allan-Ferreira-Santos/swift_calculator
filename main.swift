import Foundation

struct CalculadoraApp {
    static func main() {
        
        print("Digite o primeiro número:")
        let input1 = readLine()
        
        print("Digite o segundo número:")
        let input2 = readLine()
        
        print("Digite o operador (+, -, *, /):")
        let operador = readLine()
        
        
        if  let num1 = Double(input1 ?? "") , let num2 = Double(input2 ?? "") {
            var result: Double = 0.0
            
            switch operador {
            case "+":
                result = num1 + num2
            case "-":
                result = num1 - num2
            case "*":
                result = num1 * num2
            case "/":
                if num2 != 0 {
                    result = num1 / num2
                } else {
                    print("Erro: Divisão por zero!")
                    return
                }
            default:
                print("Operador inválido! Tente novamente.")
                return
            }
            
        
            print("Resultado: \(result)")
            
        } else {
        
            print("Entradas inválidas! Certifique-se de digitar números válidos.")
        }
    }
}

CalculadoraApp.main()
