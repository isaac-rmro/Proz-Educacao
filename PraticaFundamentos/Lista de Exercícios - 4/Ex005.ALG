algoritmo "Ex005"
//5. Faça um programa que leia uma matriz 3x6 com valores reais.
//a. Imprima a soma de todos os elementos das colunas ímpares;
//b. Imprima a média dos elementos da segunda e da quarta colunas;
//c. Substitua os valores da sexta coluna pela soma dos valores da primeira e
//segunda colunas;
//d. Imprima a matriz modificada.

var
  M: Vetor[1..3,1..6] de Inteiro //Matriz 3x6
  l, c: Inteiro //Linha e Coluna da matriz
  Impar: Inteiro //Var para guarda de numero impar
  cont: Inteiro //Var contadora
  SomaColun: Inteiro //Var para soma das colunas
  Media: Real //Var para media
  SomaColuns: Inteiro //Var para guarda de resultado das somas da colunas
  
Funcao VerColuna(numero: Inteiro): Inteiro //Verfica se há algum numero impar
inicio
  Retorne Impar + numero //Se sim irá soma-lo a variavel impar
FimFuncao

Funcao SomaColuna(numero: Inteiro): Inteiro //Soma as colunas
inicio
  Retorne SomaColun + numero
FimFuncao

Funcao SomaColunas(): Inteiro // Preenche a coluna com os resultados
var
  soma: Inteiro
inicio
  Para c de 1 ate 6 faca
    soma <- soma + M[l,c]
  FimPara
  Retorne SomaColuns + soma
FimFuncao

inicio
  Para l de 1 ate 3 faca //Preenche a matriz com 0 e 1
    Para c de 1 ate 6 faca
      Se (c = 1) ou (c = 2)entao
        M[l,c] <- 1
      senao
        M[l,c] <- 0
      FimSe
    FimPara
  FimPara
  
  cont <- 0
  
  Para l de 1 ate 3 faca //Verifica numeros impares
    Para c de 1 ate 6 faca
      Se (c%2 <> 0)entao
        Impar <- VerColuna(M[l,c])
      FimSe

      Se (c = 2) ou (c = 4)entao //Condições propostas pelo exercicio
        cont <- cont + 1
        SomaColun <- SomaColuna(M[l,c])
      FimSe
      
      Se (c = 6)entao
        SomaColuns <- SomaColunas()
      FimSe
    FimPara
  FimPara
  
  Para l de 1 ate 3 faca
    Para c de 1 ate 6 faca
      Se (c = 6)entao
        M[l,c] <- SomaColuns //Adiciona os resultados dentro da matriz
      FimSe
    FimPara
  FimPara

  Para l de 1 ate 3 faca
    Para c de 1 ate 6 faca
      Escreva(M[l,c]) //Exibe a matriz
    FimPara
    EscrevaL()
  FimPara

  Media <- SomaColun / c //Calcula a media
  
  //Exibe o resultado
  Escreva("MEDIA DOS ELEMENTOS DA SEGUNDA E QUARTA COLUNA: ", Media)
fimalgoritmo