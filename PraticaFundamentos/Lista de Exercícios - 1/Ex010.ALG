algoritmo "Ex010"
//10. Escreva um programa que leia a idade de uma pessoa e sua renda mensal.
//Se a idade for maior ou igual a 18 e a renda for maior que $1000.00,
//a pessoa pode fazer um emprestimo; caso contrario, n�o pode.
var
  Idade: Inteiro //Var para guarda da idade
  ValIdade: Logico //Var para valida��o da idade
  Renda: Real //Var para guarda de renda
  Emprestimo: Caractere //Var para confirma��o de emprestimo
  
Funcao VerIdade(i: Inteiro): Logico //Funcao para validar a idade
var
  v: Logico //Var validadora
inicio
  Se (i > 0) e (i < 100)entao //Se a idade estiver entre 0 e 100
    v <- Verdadeiro //Valida o resultado como verdadeiro
  senao //Se n�o
    v <- Falso //Valida como falso
  FimSe
  Retorne v //Retorna a valida��o
FimFuncao
  
Funcao VerEmprestimo(i: Inteiro; r: Real): Caractere
//Verifica se o usuario est� apto a realizar o emprestimo
var
  msg: Caractere
inicio
  Se (i >= 18) e (r > 1000)entao //Condi��o pelo exercicio
    msg <- "APTO A REALIZAR O EMPRESTIMO" //Se satisfazer est� apto
  senao //Se nao
    msg <- "INAPTO A REALIZAR O EMPRESTIMO" //N�o � possivel a realiza��o
  FimSe
  Retorne msg //Retorna a mensagem
FimFuncao
  
inicio
  Repita
    Escreva("DIGITE SUA IDADE: ") //Solicita a idade
      Leia(Idade)
    ValIdade <- VerIdade(Idade)
    Se (Idade < 1) ou (Idade > 100)entao //A cada valida��o falsa limpa a tela
      LimpaTela
    FimSe
  Ate(ValIdade = Verdadeiro) //Repete ate a idade ser valida
  
  Escreva("DIGITE SUA RENDA MENSAL: $") //Solicita a renda
    Leia(Renda)
  Emprestimo <- VerEmprestimo(Idade,Renda) //Verifica o emprestimo
  
  LimpaTela //Limpa a Tela apos o processamento de dados
  
  //Saida de dados
  EscrevaL("DADOS")
  EscrevaL("========")
  EscrevaL("IDADE: ", Idade)
  EscrevaL("RENDA: ", Renda)
  EscrevaL("SITUA��O: $", Emprestimo)
fimalgoritmo