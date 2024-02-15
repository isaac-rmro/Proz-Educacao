algoritmo "CaixaRegistradora"
var
  TotValor, ValorRecebido: Real
  Cedula: Vetor[0..5] de Real
  I: Inteiro
  Teste: Inteiro
  Troco: Real
  
inicio
  Cedula[0] <- 2
  Cedula[1] <- 5
  Cedula[2] <- 10
  Cedula[3] <- 20
  Cedula[4] <- 50
  Cedula[5] <- 100

  Escreva("VALOR TOTAL DA COMPRA: ")
    Leia(TotValor)
  Escreva("VALOR RECEBIDO: ")
    Leia(ValorRecebido)

  Enquanto (ValorRecebido > 0)faca
    Para I de 0 ate 5 faca
      Se (ValorRecebido % Cedula[I] = 0)entao
        Troco <- Troco + Cedula[I]
        ValorRecebido <- ValorRecebido - Cedula[I]
      FimSe
    FimPara
  FimEnquanto

fimalgoritmo