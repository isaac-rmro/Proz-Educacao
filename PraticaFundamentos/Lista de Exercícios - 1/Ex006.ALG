algoritmo "Ex006"
//6. Escreva um programa que leia a nota de um aluno e sua frequ�ncia nas
//aulas. Se a nota for maior ou igual a 6 e a frequ�ncia for maior ou igual
//a 75, o aluno est� aprovado; caso contr�rio, est� reprovado
var
  Nota: Real //Var para guarda de nota
  Fq: Inteiro //Var para guarda da frequencia
  Sit: Caractere

Funcao VerSit(n: Real; f: Inteiro): Caractere //Funcao para verificar a situacao do aluno
var
  msg: Caractere //Var para retornar uma mensagem
inicio
  Se (n >=6) e (f >= 75)entao //Se o aluno conseguir a media
    msg <- "ALUNO APROVADO" //Mensagem
  senao //Se n�o conseguir
    msg <- "ALUNO REPROVADO" //Mensagem
  FimSe
  Retorne msg //Retorna a mensagem apos a verificacao
FimFuncao

inicio
  Repita
      //Entrada de dados
      Escreva("DIGITE SUA NOTA: ") //Solicita nota
        Leia(Nota) //Guarda
      Escreva("FREQU�NCIA NAS AULAS: ") //Solicita frequencia
        Leia(Fq) //Guarda
      Se (Nota < 0) ou (Nota > 10)entao
        LimpaTela //Limpa tela a cada dado invalido
        EscrevaL("DIGITE DADOS V�LIDOS!!") //Mensagem de alerta
        EscrevaL()
      FimSe
  Ate((Nota >= 0) e (Nota < 11)) e ((Fq >= 0) e (Fq < 101)) //Repete quando
  //h� valores invalidos
  
   Sit <- VerSit(Nota,Fq) //A var sit ir� receber o resultado de verificacao
   //pela funcao

   LimpaTela //Limpa a tela para exibicao dos resultados

   //Exibi os valores processados
   EscrevaL("NOTA: ", Nota)
   EscrevaL("FREQUENCIA: ", Fq)
   Escreva("SITUACAO: ", Sit)
fimalgoritmo