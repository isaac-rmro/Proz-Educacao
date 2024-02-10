algoritmo "Ex007"
//7. Faça um programa que leia duas matrizes 3x3 com valores reais. Ofereça ao
//usuário um menu de opções:
//a. somar as duas matrizes
//b. subtrair a primeira matriz da segunda
//c. adicionar um valor informado pelo usuário às duas matrizes;
//d. imprimir as matrizes na tela
//Nas duas primeiras opções uma terceira matriz 3x3 deve ser criada.
//Na terceira opção o valor da constante deve ser lido e o resultado
//adicionado aos elementos da própria matriz

var
  Mat1: Vetor[1..2,1..2] de Real
  Mat2: Vetor[1..2,1..2] de Real
  l,c: Inteiro
  Opcao: Inteiro
  Mat3: Vetor[1..3,1..3] de Real
  i,j: Inteiro
  Resposta: Caractere
  Vlr: Inteiro
  
inicio
  EscrevaL("PRIMEIRA MATRIZ")
  Para l de 1 ate 2 faca
    Para c de 1 ate 2 faca
      Escreva("POSIÇÃO [ ", l, ",", c, " ]: ")
      Leia(Mat1[l,c])
    FimPara
  FimPara
  
  EscrevaL()
  
  EscrevaL("SEGUNDA MATRIZ")
  Para l de 1 ate 2 faca
    Para c de 1 ate 2 faca
      Escreva("POSIÇÃO [ ", l, ",", c, " ]: ")
        Leia(Mat2[l,c])
    FimPara
  FimPara

  Para c de 1 ate 3 faca
    Mat3[3,c] <- 0
  FimPara
  
  Repita
  LimpaTela
  EscrevaL("Escolha uma opção")
  EscrevaL("[1] somar duas matrizes")
  EscrevaL("[2] subtrair a primeira matriz da segunda")
  EscrevaL("[3] adicionar um valor informado pelo usuario as duas matrizes")
  EscrevaL("[4] imprimir as matrizes na tela")
    Leia(Opcao)

  Escolha Opcao
    Caso 1
      Para l de 1 ate 3 faca
        Para c de 1 ate 3 faca
          Para i de 1 ate 2 faca
            Para j de 1 ate 2 faca
              Mat3[l,c] <- Mat1[i,j] + Mat2[i,j]
            FimPara
          FimPara
        FimPara
      FimPara
    Caso 2
      Para l de 1 ate 3 faca
        Para c de 1 ate 3 faca
          Para i de 1 ate 2 faca
            Para j de 1 ate 2 faca
              Mat3[l,c] <- Mat1[i,j] - Mat2[i,j]
            FimPara
          FimPara
        FimPara
      FimPara
    Caso 3
      Escreva("DIGITE UM VALOR: ")
        Leia(Vlr)
        Mat1[1,2] <- Vlr
        Mat2[1,2] <- Vlr
    Caso 4
      EscrevaL("PRIMEIRA MATRIZ")
      Para l de 1 ate 2 faca
        Para c de 1 ate 2 faca
          Escreva(Mat1[l,c])
        FimPara
        EscrevaL()
      FimPara

      EscrevaL()

      EscrevaL("SEGUNDA MATRIZ")
      Para l de 1 ate 2 faca
        Para c de 1 ate 2 faca
          Escreva(Mat2[l,c])
        FimPara
        EscrevaL()
      FimPara
      
      EscrevaL()
      
      EscrevaL("TERCEIRA MATRIZ")
      Para l de 1 ate 3 faca
        Para c de 1 ate 3 faca
          Escreva(Mat3[l,c])
        FimPara
        EscrevaL()
      FimPara
  FimEscolha
  
  EscrevaL()
  
  Escreva("Deseja Continuar[S,N]: ")
    Leia(Resposta)
  Ate(Resposta = "N") ou (Resposta = "n")
fimalgoritmo