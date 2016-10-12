#Programa para calcular a média e quanto falta para passar
#Centro Universitário Tiradentes
#Edval Vitor
#Versão 1.0.2

print("- Bem vindo!!!")
print("- Programa pra calcular média da UNIT")
print("- Se você quer calcular sua média digite 1, se quer calcular quanto precisa para passar digite 2")
opcao = int(input("Digite a sua opção: "))

#Calcular a média final
if (opcao == 1):
    uni1 = float(input("- Digite a nota da Primeira unidade: "))
    uni2 = float(input("- Digite a nota da segunda unidade: "))
    total = ((uni1 * 4) + (uni2 * 6))
    if (total >= 60):
        total = (total/10)
        #Calculando somente com duas casas decimais
        totalf = "%.2f" % total
        print("Você passou, sua nota final é igual a: ", totalf)
    elif (total < 60):
        total = (total/10)
        #Nota que precisa para final
        final = 12 - total
        final = "%.2f" % final
        #Calculando somente com duas casas decimais
        totalf = "%.2f" % total
        print("Você não passou, sua média é igual a: ", (totalf))
        print("E precisa de ", (final), "na prova final para passar!")
elif (opcao == 2): #Calcular quanto falta para passar
    uni1 = float(input("- Digite a nota da primeira unidade: "))
    falta = (60 - (uni1 * 4))
    mediaf = falta / 6
    #Calcular somente com duas casas decimais
    print("Você precisa de", ("%.2f" % mediaf),"para passar!")
    
else:
    print("Opção incorreta, saindo do programa!")
    
