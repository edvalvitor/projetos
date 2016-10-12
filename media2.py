#Programa para calcular a média e quanto falta para passar
#Centro Universitário Tiradentes
#Edval Vitor
#Versão 1.0.1

while True:
    print("Programa para calcular média da UNIT")
    print("Se você quer calcular a sua média digite 1") 
    print("Se quer calcular quanto precisa para passar digite 2")
    opcao = int(input("Digite sua opção: "))
    
    #Função para calcular a média final    
    def func1():
        uni1 = float(input("Digite a nota da Primeira unidade: "))
        uni2 = float(input("Digite a nota da Segunda unidade: "))
        total = ((uni1 * 4) + (uni2 * 6))
        if (total >= 60):
            print("Você passou, sua nota é igual a: ", (total/10))
        elif (total < 60):
            print("Você não passou, sua nota é igual a: ", (total/10))

    #Função para calcular quanto precisa para passar
    def func2():
        uni1 = float(input("Digite a nota da primeira unidade: "))
        falta =(60 - (uni1*4))
        mediaf = falta /6
        print("Você precisa de", mediaf, "para passar")
    
    
    if (opcao == 1):
        func1()
    elif (opcao == 2):
        func2()
    else:
        print("Opção incorreta, saindo do programa!")
        break 

