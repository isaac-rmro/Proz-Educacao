algoritmo "Ex001"
//Ler dez elementos de uma matriz unidimensional do tipo inteiro e apresentar
//os valores lidos.
var
  I: Inteiro //Var contadora
  Vet: vetor[1..10] de Inteiro //Vetor de 10 posi��es
inicio
  Para I de 1 ate 10 faca //Contagem de 1 a 10
    Escreva("Digite o valor na posi��o ", I, ": ")//Solicita o numero
      Leia(Vet[I]) //Salva o numero na posicao do contador
  FimPara
  
  EscrevaL()
  
  //Exibi��o de resultado
  
  EscrevaL("Escrevendo...")
  
  Para I de 1 ate 10 faca //Imprimi todos os valores nas posi��es dos vetores
    Escreva(Vet[I], " ")
  FimPara
fimalgoritmo