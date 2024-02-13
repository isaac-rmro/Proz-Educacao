algoritmo "InsertionSort"
var
  I, J: Inteiro //Indices do vetor
  V: Vetor[1..5] de Inteiro //Vetor de 5 posição
  Temp: Inteiro //Var temporaria
  
Procedimento OrdenaInsertion() //Ordena todos os numeros
inicio
  Para I de 2 ate 5 faca //Comeca o indice no 2
    Temp <- V[I] //Guarda o conteudo da posicao atual para comparação
    J <- I -1 //J será a posicao anterior
    Enquanto (Temp < V[J])faca //Enquanto a posicao atual for menor que
    //que a posicao anterior faca
      V[J+1] <- V[J] //A posicao atual receber a posicao a esquerda
      J <- J - 1 //E decrementa o indice j - 1
    FimEnquanto
    V[J+1] <- Temp //Move o valor para o lugar correto
  FimPara
FimProcedimento

inicio
  Para I de 1 ate 5 faca
    Aleatorio on //Le numeros aleatorios
      Leia(V[I])
    Aleatorio off
  FimPara
  
  OrdenaInsertion()
  
  EscrevaL()
  
  EscrevaL("VETOR ORDENADO..") //Exibe o resultado
  Para I de 1 ate 5 faca
    Escreva(V[I], ", ")
  FimPara
fimalgoritmo
