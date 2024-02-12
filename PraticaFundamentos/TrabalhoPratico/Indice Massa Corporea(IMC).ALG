algoritmo "IMC"
var
  Peso, Altura: Real //Peso e Altura
  IMC: Real //Calculo do imc
  Class: Caractere //Classifica o imc
  Valida: Logico //Valida a entrada de dados

Funcao VerValida(peso,altura: Real): Logico //Pesos Validos
var
  continuar: logico
inicio
  Se (peso < 1) ou (altura < 1)entao
    continuar <- Falso
  senao
    continuar <- Verdadeiro
  FimSe
  Retorne continuar
FimFuncao
  
Procedimento Msg() //Mensagem de error
inicio
  LimpaTela
  EscrevaL("Insira um valor válido !!")
FimProcedimento

Funcao VerClass(indice: Real): Caractere //Verifica a classificacao do imc
var
  classifica: Caractere
inicio
  Se (indice < 18.5)entao
    classifica <- "Baixo Peso"
  senao
    Se (indice < 24.9)entao
      classifica <- "Peso Normal"
    senao
      Se (indice < 29.9)entao
        classifica <- "Sobrepeso"
      senao
        Se (indice < 34.9)entao
          classifica <- "Obesidade Grau I"
        senao
          Se (indice < 39.9)entao
            classifica <- "Obesidade Grau II"
          senao
            classifica <- "Obesidade Grau III"
          FimSe
        FimSe
      FimSe
    FimSe
  FimSe
  Retorne classifica
FimFuncao

inicio
  EscrevaL("Insira suas informações") //Solicita peso e altura
  Repita
    Escreva("Peso(kg): ")
      Leia(Peso)
    Escreva("Altura(m): ")
      Leia(Altura)
    
    Valida <- VerValida(Peso,Altura)
    Se (Valida = Falso)entao
      Msg()
    FimSe
  Ate (Valida = Verdadeiro)
  
  IMC <- Peso / Altura ^ 2 //Calculo do imc
  Class <- VerClass(IMC) //Mensagem de classificacao
  
  LimpaTela
  
  //Exibicao de resultados
  EscrevaL("IMC: ", IMC:3:1)
  Escreva("CLASSIFICAÇÃO: ", Class)
fimalgoritmo