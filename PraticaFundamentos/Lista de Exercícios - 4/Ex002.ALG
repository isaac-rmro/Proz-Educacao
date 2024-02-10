algoritmo "Ex002"
//2. Faça um programa que preencha uma matriz 4x4 com o produto dos índices da
//linha e da coluna de cada elemento. Em seguida imprima na tela a matriz
//obtida.

var
  Mat: Vetor[1..4,1..4] de Inteiro //Matriz 4x4
  l, c: Inteiro //Linha e Coluna para percorrer a matriz
  
inicio
  Para l de 1 ate 4 faca //Preenche a matriz
    Para c de 1 ate 4 faca
      Mat[l,c] <- l * c //Cada espaço irá receber o produto do indice da posição
    FimPara
  FimPara
  
  Para l de 1 ate 4 faca //Imprimi o resultado
    Para c de 1 ate 4 faca
      Escreva(Mat[l,c])
    FimPara
    EscrevaL()
  FimPara
fimalgoritmo