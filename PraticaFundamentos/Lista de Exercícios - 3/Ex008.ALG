algoritmo "Ex008"
//8. Fa�a um algoritmo que leia 10 valores num�ricos inteiros em um vetor e
//tr�s valores inteiros nas vari�veis A B e C. Ap�s a leitura, informe o n�mero
//de vezes que os n�meros A, B e C aparecem no vetor.

var
  I: Inteiro //Contador
  A, B, C: Inteiro //Var A, B, C
  Num: Vetor[1..10] de Inteiro //Vetor de 10 posi��es
  SomaA, SomaB, SomaC: Inteiro //Variaveis para guarda de soma
  
inicio
  //Entrada de dados
  Escreva("DIGITE O VALOR DE A: ", A)
    Leia(A)
  Escreva("DIGITE O VALOR DE B: ", B)
    Leia(B)
  Escreva("DIGITE O VALOR DE C: ", C)
    Leia(C)

  Para I de 1 ate 10 faca
    Escreva("DIGITE O VALOR DA POSI��O ", I, ": ")
      Leia(Num[I])
  FimPara
  
  //Verifica se o valor � o mesmo nas duas variaveis
  Para I de 1 ate 10 faca
    Se (Num[I] = A)entao
      SomaA <- SomaA + 1 //Se for soma +1
    senao
      Se (Num[I] = B)entao
        SomaB <- SomaB + 1
      senao
        Se (Num[I] = C)entao
          SomaC <- SomaC + 1
        senao
        FimSe
      FimSe
    FimSe
  FimPara
  
  //Imprimi os resultados
  LimpaTela
  
  EscrevaL("A: ", SomaA)
  EscrevaL("B: ", SomaB)
  EscrevaL("C: ", SomaC)
fimalgoritmo