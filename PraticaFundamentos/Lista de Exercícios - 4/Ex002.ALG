algoritmo "Ex002"
//2. Fa�a um programa que preencha uma matriz 4x4 com o produto dos �ndices da
//linha e da coluna de cada elemento. Em seguida imprima na tela a matriz
//obtida.

var
  Mat: Vetor[1..4,1..4] de Inteiro //Matriz 4x4
  l, c: Inteiro //Linha e Coluna para percorrer a matriz
  
inicio
  Para l de 1 ate 4 faca //Preenche a matriz
    Para c de 1 ate 4 faca
      Mat[l,c] <- l * c //Cada espa�o ir� receber o produto do indice da posi��o
    FimPara
  FimPara
  
  Para l de 1 ate 4 faca //Imprimi o resultado
    Para c de 1 ate 4 faca
      Escreva(Mat[l,c])
    FimPara
    EscrevaL()
  FimPara
fimalgoritmo