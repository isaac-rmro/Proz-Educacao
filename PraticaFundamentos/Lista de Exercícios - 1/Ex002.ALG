algoritmo "Ex002"
//2. Crie um programa que verifique se um n�mero � par ou �mpar
var
  Num: Inteiro //Var para guardar o que o usuario digitou
  Ver: Caractere //Var que ira receber o resultado da funcao
  
Funcao ParOuImpar(n: Inteiro): Caractere
var
  msg: caractere //Var de escopo local para guardar mensagem
inicio
  Se (n%2= 0)entao //Se for divisivel por 2 resto 0
    msg <- "Par" //Mesagem (O numero � par)
  senao //Se nao for
    msg <- "Impar" //Mensagem (O numero � impar)
  FimSe
  Retorne msg //Ir� retornar a variavel com o conteudo
FimFuncao

inicio
  Escreva("Digite um n�mero para verifica��o: ") //Solicita um numero
    Leia(Num) //Guarda o numero na var (Num)
  Ver <- ParOuImpar(Num) //Verifica se o numero � par ou impar
  Escreva("O numero ", Num, " �: ", Ver) //Saida de dados organizada
fimalgoritmo