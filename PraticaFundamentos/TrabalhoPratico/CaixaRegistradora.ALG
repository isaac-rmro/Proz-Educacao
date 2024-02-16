algoritmo "CaixaRegistradora"
var
  Cedula: Vetor[0..5] de Inteiro
  Moeda: Vetor[0..4] de Real
  TotValor, ValorRecebido, Troco, QtdTroco: Real
  I: Inteiro
  
inicio
  Cedula[0] <- 100
  Cedula[1] <- 50
  Cedula[2] <- 20
  Cedula[3] <- 10
  Cedula[4] <- 5
  Cedula[5] <- 2
  Moeda[0] <- 1.00
  Moeda[1] <- 0.50
  Moeda[2] <- 0.25
  Moeda[3] <- 0.10
  Moeda[4] <- 0.05
  
  Escreva("DIGITE O VALOR TOTAL DA COMPRA: ")
    Leia(TotValor)
  Escreva("DIGITE O VALOR RECEBIDO: ")
    Leia(ValorRecebido)

  Troco <- ValorRecebido - TotValor
  
  EscrevaL("TROCO: ", Troco)
  
  Para I de 0 ate 5 faca
    QtdTroco <- Int(Troco/Cedula[I])
    Se (QtdTroco > 0)entao
      Escreval("QuantNotas de ",  Cedula[I]," reais: ", QtdTroco)
      Troco <- Troco - (QtdTroco * Cedula[I])
    FimSe
  FimPara
  
  Para I de 0 ate 4 faca
    QtdTroco <- Int(Troco/Moeda[I])
    Se (QtdTroco > 0)entao
      EscrevaL("QuantMoedas de ", Moeda[I], " reais: ", QtdTroco)
      Troco <- Troco - (QtdTroco * Moeda[I])
    FimSe
  FimPara
  
fimalgoritmo