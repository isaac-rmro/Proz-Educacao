algoritmo "BubbleSort"
var
  I, J: Inteiro
  List: Vetor[1..5] de Inteiro
  aux: Inteiro

inicio
  Para I de 1 ate 5 faca //Preenche a lista de vetor
    Aleatorio on
      Leia(List[I])
    Aleatorio off
  FimPara
  
  Para I de 1 ate 5 faca //Compara um numero com os outros
    Para J de I+1 ate 5 faca
      Se (List[I] > List[J])entao //Se ele for maior entao ocorre a troca
        aux <- List[I]
        List[I] <- List[J]
        List[J] <- aux
      FimSe
    FimPara
  FimPara

  Para I de 1 ate 5 faca //Exibe o vetor ordenado
    Escreva(List[I])
  FimPara
fimalgoritmo