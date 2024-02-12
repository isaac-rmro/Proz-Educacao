algoritmo "CaixaEletronico"
var
  Opcao: Inteiro //Opcao para menu
  Saldo ,Saque: Real //Saldo e Saque do usuario
  Deposito: Real //Deposito do usuario
  Resposta: Caractere //Resposta para continuar a operacao
  
inicio
  Saldo <- 1300 //Salario minimo no brasil rs
  
  Repita
  EscrevaL("BEM VINDO") //Menu
  Repita
    EscrevaL("[1] Saque")
    EscrevaL("[2] Deposito")
    EscrevaL("[3] Verificação de Saldo")
      Leia(Opcao)
    Se (Opcao < 1) ou (Opcao > 3)entao //Verifica a opcao
      LimpaTela
      EscrevaL("Digite uma opção válida!!!")
    FimSe
  Ate(Opcao > 0) e (Opcao < 4)

  Escolha Opcao
    Caso 1
      Repita
        Escreva("Valor do Saque: ") //Valor do saque
          Leia(Saque)
        Se (Saque > Saldo)entao //Nao pode ser maior que o saldo
          LimpaTela
          EscrevaL("SALDO INSUFICIENTE!!")
        FimSe
      Ate(Saque <= Saldo)
      Saldo <- Saldo - Saque
      Escreva("SAQUE CONCLUIDO!!")
    Caso 2
      Escreva("Valor Deposito: ") //Deposita uma contia no saldo
        Leia(Deposito)
      Saldo <- Saldo + Deposito
    Caso 3
      EscrevaL("SALDO ATUAL: ", Saldo) //Exibe o saldo atual
  FimEscolha
  
  EscrevaL()

  Escreva("DESEJA CONTINUAR[S,N]: ") //Repete toda a operacao
    Leia(Resposta)
  LimpaTela
  Ate(Resposta = "N") ou (Resposta = "n")
fimalgoritmo