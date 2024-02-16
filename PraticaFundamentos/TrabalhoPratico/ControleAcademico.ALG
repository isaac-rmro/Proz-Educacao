Algoritmo "ControleAcademico"
Var
  Matricula: Vetor[0..14] de Inteiro
  Aluno: Vetor[0..14] de Caractere
  Idade: Vetor[0..14] de Inteiro
  Opcao, Cont, I, J: Inteiro
  Respt: Caractere
  Disciplina: Vetor[0..2] de Caractere
  VerMatricula: Inteiro
  Nota: Vetor[0..14,0..2] de Real
  PosicaoAluno: Vetor[0..14,0..1] de Inteiro
  ValidaNota: Logico
  Media: Vetor[0..14] de Real
  
Procedimento CadastroNota(mat: Inteiro) //Cadastra Notas
inicio
  Para Cont de 0 ate 14 faca
    Se (mat = Matricula[Cont]) e (PosicaoAluno[Cont,0] = Matricula[Cont])entao
      EscrevaL("MATRICULA: ", Matricula[Cont])
      Para I de 0 ate 2 faca
        Repita
          Escreva("DIGITE A NOTA DA DISCIPLINA (", Disciplina[I], "): ")
            Leia(Nota[Cont,I])
          Se (Nota[Cont,I] < 0) ou (Nota[Cont,I] > 10)entao
            ValidaNota <- Falso
            EscrevaL()
            EscrevaL("INSIRA UMA NOTA VÁLIDA")
          senao
            ValidaNota <- Verdadeiro
          FimSe
        Ate(ValidaNota = Verdadeiro)
      FimPara
    FimSe
  FimPara
FimProcedimento

Funcao VerMedia(nota1,nota2,nota3: Real): Real //Obtem a media
inicio
  Retorne (nota1+nota2+nota3)/3
FimFuncao

Inicio
  Disciplina[0] <- "Algoritmo"
  Disciplina[1] <- "Segurança"
  Disciplina[2] <- "Desenv_Web"
  
  Repita //Menu de opcoes
    EscrevaL("[1] CADASTRO NOVO ALUNO")
    EscrevaL("[2] NOTAS")
    EscrevaL("[3] CONSULTAR NOTAS DE ALUNO")
    EscrevaL("[4] GERAR RELÁTORIO DE DESEMPENHO")
      Leia(Opcao)

    LimpaTela

    Escolha Opcao
      Caso 1
        Escreva("DIGITE A MATRICULA: ") //Cadastra um aluno
          Leia(Matricula[Cont])
        Escreva("NOME DO ALUNO: ")
          Leia(Aluno[Cont])
        Escreva("IDADE: ")
          Leia(Idade[Cont])
        PosicaoAluno[Cont,0] <- Matricula[Cont] //E obtem-se a posicao
        PosicaoAluno[Cont, 1] <- Cont
        Cont <- Cont + 1
      Caso 2
        Escreva("DIGITE A MATRICULA: ") //Solicita matricula
          Leia(VerMatricula)
          CadastroNota(VerMatricula)
      Caso 3
        Escreva("DIGITE A MATRICULA: ") //Solicita matricula
          Leia(VerMatricula)
        Para Cont de 0 ate 14 faca
          Se(VerMatricula = Matricula[Cont])entao //Exibe informacoes sobre o aluno
            EscrevaL("MATRICULA: ", Matricula[Cont])
            EscrevaL("ALUNO: ", Aluno[Cont])
            EscrevaL("IDADE: ", Idade[Cont])
            Para I de 0 ate 2 faca
              EscrevaL(Disciplina[I], ": ", Nota[Cont,I]) //Exibe as notas
              //da disciplina
            FimPara
          FimSe
        FimPara
      Caso 4
        Escreva("DIGITE A MATRICULA: ") //Calcula a media e a exibe
          Leia(VerMatricula)
        Para Cont de 0 ate 14 faca
          Se(VerMatricula = Matricula[Cont])entao
            Media[Cont] <- VerMedia(Nota[Cont,0],Nota[Cont,1],Nota[Cont,2])
            LimpaTela
            EscrevaL("MATRICULA: ", Matricula[Cont])
            EscrevaL("MÉDIA: ", Media[Cont])
          FimSe
        FimPara
    FimEscolha
    Escreva("VOLTAR AO MENU[S/N]: ") //Repete tudo
      Leia(Respt)
    LimpaTela
  Ate(Respt = "N")
Fimalgoritmo
