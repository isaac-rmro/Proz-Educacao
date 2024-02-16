algoritmo "CaixaRegistradora"
var
  Cedula: Vetor[0..5] de Inteiro
  Moeda: Vetor[0..4] de Real
  TotValor, ValorRecebido, Troco, QtdTroco: Real
  I: Inteiro
  
inicio
  //Valores
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
    Leia(TotValor) //Valor total da compra
  Escreva("DIGITE O VALOR RECEBIDO: ")
    Leia(ValorRecebido) //Valor recebido pelo cliente

  Troco <- ValorRecebido - TotValor //Calcula o troco
  
  EscrevaL("TROCO: ", Troco) //Exibe o troco
  
  Para I de 0 ate 5 faca //Percorre todas as cedulas
    QtdTroco <- Int(Troco/Cedula[I]) //Recebe a divisao inteira do troco e cedula
    Se (QtdTroco > 0)entao //Enquanto troco for maior que 0
      Escreval("QuantNotas de ",  Cedula[I]," reais: ", QtdTroco)
      Troco <- Troco - (QtdTroco * Cedula[I]) //Ele ira calcular a quantidade
      //de nota para a var QtdTroco alcançar a Var original Troco
    FimSe
  FimPara
  
  //O mesmo para as moedas so que agora com valores menores
  Para I de 0 ate 4 faca
    QtdTroco <- Int(Troco/Moeda[I])
    Se (QtdTroco > 0)entao
      EscrevaL("QuantMoedas de ", Moeda[I], " reais: ", QtdTroco)
      Troco <- Troco - (QtdTroco * Moeda[I])
    FimSe
  FimPara
  
fimalgoritmo