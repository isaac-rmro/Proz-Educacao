algoritmo "Ex011"
//11. Desenvolva um programa que leia um n�mero e informe se ele � um
//multiplo de 3 e de 5 ao mesmo tempo.
var
  Num: Inteiro //Var numero digitado
  Multiplo: Logico //Var para verificacao de multiplos
  Msg: Caractere //Var para mensagem apos verificacao
  
Funcao VerMulti(n: Inteiro): Logico //Verifica se � multiplo
var
  v: Logico //Var validadora
inicio
  Se (n%3 = 0) e (n%5 = 0)entao //Se for divisivel por 3 e 5 ao mesmo tempo
    v <- Verdadeiro //� multiplo
  senao //Se n�o for os dois ao mesmo tempo
    v <- Falso //N�o � multiplo
  FimSe
  Retorne v //Retorna valida��o
FimFuncao
  
Funcao VerMsg(m: Logico): Caractere //Funcao para exibi��o de mensagem
var
  msg: Caractere //Var para mensagem
inicio
  Se (m = Verdadeiro)entao //Se a valida��o for verdadeira
    msg <- "DIVISIVEL POR 3 E 5" //Exibe
  senao //Se for falsa
    msg <- "N�O DIVISIVEL POR 3 E 5" //Exibe
  FimSe
  Retorne msg
FimFuncao
  
inicio
  Escreva("DIGITE UM N�MERO: ") //Solicita o numero
    Leia(Num)
    
  Multiplo <- VerMulti(Num) //Funcao para verificar se � multiplo
  Msg <- VerMsg(Multiplo) //Funcao para mensagem
  
  //Saida de dados
  Escreva(Msg)
fimalgoritmo