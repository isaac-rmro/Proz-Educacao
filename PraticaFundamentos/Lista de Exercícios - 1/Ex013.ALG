algoritmo "Ex013"
//13. Escreva um programa que leia um ano e informe se ele � bissexto ou n�o.
//Um ano � bissexto se for divis�vel por 4, exceto se for divisivel por 100,
//mas � divisivel por 400.
var
  Ano: Inteiro //Var para guarda de ano
  Bi: Caractere //Var para verificacao de bissexto

Funcao VerBi(a: Inteiro): Caractere //Verifica o ano
var
  msg: Caractere //mensagem
inicio
  //Se for divisivel por 4 e ao mesmo tempo nao for por 100 = Verdadeiro
  //Senao se for divisivel por 400 = Verdadeiro
  Se ((a%4 = 0) e (a%100 <> 0)) ou (a%400 = 0)entao
    msg <- "ANO BISSEXTO"
  senao //Caso contrario
    msg <- "ANO N�O BISSEXTO" //Nao � bissexto
  FimSe
  Retorne msg //Retorna mensagem apos verifica��o
FimFuncao

inicio
  Escreva("DIGITE ANO(yyyy): ") //Solicita ano
    Leia(Ano)
  Bi <- VerBi(Ano) //Verifica o ano e guarda na variavel Bi
  
  //Exibe a mensagem
  EscrevaL()
  EscrevaL(Bi)
fimalgoritmo