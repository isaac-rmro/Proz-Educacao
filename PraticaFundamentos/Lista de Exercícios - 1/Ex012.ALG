algoritmo "012"
//12. Crie um programa que leia tr�s valores(a, b, c) e informe se � possivel
//formar um tri�ngulo com esses valores. Se sim, informe se � um tri�ngulo
//equil�tero, is�sceles ou escaleno.
var
  I: Inteiro //Var contadora
  Alf: vetor[1..3] de Caractere //Vetores para mostra de lugar dos valores
  Vlr: vetor[1..3] de Inteiro //Vetores para guarda de valores
  Tri, Eq, Iso, Esc: Logico //Vetores Verificadores
  
Funcao VerTri(a,b,c: Inteiro): Logico //Verifica se � um triangulo
var
  v: Logico //Var para guarda de resultado
inicio
  //Se cada lado do triangulo for menor que a soma dos outros dois
  Se (a < b + c) e (b < c + a) e (c < b + a)entao
    v <- Verdadeiro //Ent�o � um triangulo
  senao //Caso contrario
    v <- Falso //N�o
  FimSe
  Retorne v //Retorna a verificacao
FimFuncao

Funcao VerEq(a,b,c: Inteiro): Logico //Verifica se � um Triangulo Equilatero
var
  v: Logico //Var para guarda de resultado
inicio
  //Se todos os lados forem iguais
  Se (a = b) e (b = c)entao
    v <- Verdadeiro //� um triangulo equilatero
  senao //Se n�o
    v <- Falso //N�o �
  FimSe
  Retorne v //Retorna resultado
FimFuncao

Funcao VerIso(a,b,c: Inteiro): Logico //Verifica se � Triangulo Isosceles
var
  v: Logico //Var para guarda de resultado
inicio
  //Se houver 2 lados iguais e um diferente
  Se (a = b) e (b <> c)entao
    v <- Verdadeiro
  senao
    Se (b = c) e (b <> a)entao
      v <- Verdadeiro
    senao
      Se (c = a) e (c <> b)entao //Todos ira retornar verdadeiro
        v <- Verdadeiro
      senao
        v <- Falso //Se n�o houver nenhum, Falso
      FimSe
    FimSe
  FimSe
  Retorne v //Retorna o resultado
FimFuncao

Funcao VerEsc(a,b,c: Inteiro): Logico //Verifica se � Triangulo Escaleno
var
  v: Logico //Var para guarda de resultado
inicio
  Se (a <> b) e (b <> c) e (c <> a)entao //Se todos os lados for diferente
    v <- Verdadeiro //� Escaleno
  senao //Se n�o
    v <- Falso //N�o �
  FimSe
  Retorne v //Retorna resultado
FimFuncao

inicio
  //Vetores para exibi��o da posi��o
  Alf[1] <- "a"
  Alf[2] <- "b"
  Alf[3] <- "c"

  Para I de 1 ate 3 faca
    Escreva("Digite o valor de ", Alf[I], ": ")
      Leia(Vlr[I]) //Guarda o valor na posi��o do contador
  FimPara
  
  //Atribui��es de verifica��es
  Tri <- VerTri(Vlr[1],Vlr[2],Vlr[3])
  Eq <- VerEq(Vlr[1],Vlr[2],Vlr[3])
  Iso <- VerIso(Vlr[1],Vlr[2],Vlr[3])
  Esc <- VerEsc(Vlr[1],Vlr[2],Vlr[3])
  
  LimpaTela //Limpa a Tela
  
  //Exibi na tela os resultados
  EscrevaL("RESULTADOS")
  EscrevaL("TRIANGULO: ", Tri)
  EscrevaL("EQUILATERO: ", Eq)
  EscrevaL("ISOSCELES: ", Iso)
  Escreva("ESCALENO: ", Esc)
fimalgoritmo