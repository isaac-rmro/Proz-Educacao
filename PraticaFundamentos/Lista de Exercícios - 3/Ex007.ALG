algoritmo "Ex007"
//7. Fa�a um algoritmo que leia 30 valores do tipo inteiro e armazene-os em um
//vetor. A seguir, o algoritmo dever� informar (1) todos os n�meros pares que
//existem no vetor; (2) o menor e o maior valor existente no vetor; (3) quantos
//dos valores do vetor s�o maiores que a m�dia desses valores.

var
  Num: Vetor[1..30] de Inteiro //Vetor de 30 posi��es
  I: Inteiro //Indice
  Maior, Menor: Inteiro
  
Funcao VerMaior(num, cont: Inteiro): Inteiro //Verifica o maior numero
var
  maior: Inteiro //Var para guarda do maior numero
inicio
  Se (cont = 1)entao //Se for a primeira compara��o o valor sera usado como base
    maior <- num
  senao //Se nao
    Se (num > Maior)entao //Se o numero atual for maior que o numero guardado na var Maior
      maior <- num //Ele sera o novo Maior
    FimSe
  FimSe
  Retorne maior //Retorna o resultado
FimFuncao
  
Funcao VerMenor(num, cont: Inteiro): Inteiro //Verifica o menor numero
inicio
  Se (cont = 1)entao //Se for a primeira compara��o o valor sera usado como base
    menor <- num
  senao //Senao
    Se (num < Menor)entao//Se o numero atual for menor que o numero guardado na var Menor
      menor <- num //Ele sera o novo Menor
    Fimse
  FimSe
  Retorne menor //Retorna o resultado
FimFuncao

inicio
  Para I de 1 ate 30 faca //Solicita os 30 numeros
    Escreva("Digite o ", I, "� valor: ")
      Leia(Num[I])
  FimPara
  
  Escreva("PARES: ") //Mostra os numeros pares
  Para I de 1 ate 30 faca
    Se (Num[I]%2 = 0)entao
      Escreva(Num[I], ", ")
    FimSe
  FimPara

  EscrevaL()

  Para I de 1 ate 30 faca //Verifica todos os numeros
    Maior <- VerMaior(Num[I],I) //Encontra o maior
    Menor <- VerMenor(Num[I],I) //Encontra o menor
  FimPara
  
  //Exibe os resultados
  EscrevaL("MAIOR NUMERO DIGITADO: ", Maior)
  Escreva("MENOR NUMERO DIGITADO: ", Menor)
fimalgoritmo