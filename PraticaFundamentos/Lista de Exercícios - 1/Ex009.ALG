algoritmo "Ex009"
var
  Num: Inteiro //Var para guarda de numero digitado
  Primo: Caractere //Var para mensagem (� OU NAO � PRIMO EIS A QUEST�O)
  
Funcao VerPrimo(n: Inteiro): Caractere //Funcao para verificacao do numero
var
  //Variavel contadora e acumuladora
  i: Inteiro
  c: Inteiro
inicio
  Para i de 1 ate n faca //Para 1 ate o numero faca
    Se (n%i = 0)entao //Ir� dividir o contador pelo numero
      c <- c + 1 //A cada divisao com resto 0 a var C vai receber +1
    FimSe
  FimPara
  
  Se (c = 2)entao //Numero primo = So pode ser divisivel por 2 numeros
    Retorne "NUMERO PRIMO"
  senao //Se for divisivel por mais
    Retorne "NUMERO N�O PRIMO" //N�o � primo
  FimSe
FimFuncao
  
inicio
  Escreva("DIGITE UM NUMERO: ") //Solicita um numero
    Leia(Num)
  Primo <- VerPrimo(Num) //Var recebe resultado da funcao
  
  Escreva(Primo) //Exibe a mensagem
fimalgoritmo