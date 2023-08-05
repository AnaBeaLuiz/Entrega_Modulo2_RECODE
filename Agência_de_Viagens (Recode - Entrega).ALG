Algoritmo "AgenciaDeViagens"

// Declaração de Variáveis para armazenar Clientes e Destinos
Var
  clientes: vetor[1..100] de caractere
  destinos: vetor[1..100] de caractere
  qtdClientes, qtdDestinos, opcao: inteiro
  nomeCliente, destino: caracter

// Função para cadastrar Cliente
Funcao cadastrarCliente(cliente: caractere) : logico
Inicio
  Se qtdClientes < 100 Entao
    qtdClientes <- qtdClientes + 1
    clientes[qtdClientes] <- cliente
    Retorne verdadeiro
  Senao
    Escreval("Limite máximo de clientes atingido.")
    Retorne falso
  FimSe
FimFuncao

// Função para cadastrar Destino
Funcao cadastrarDestino(destino: caractere) : logico
Inicio
  Se qtdDestinos < 100 Entao
    qtdDestinos <- qtdDestinos + 1
    destinos[qtdDestinos] <- destino
    Retorne verdadeiro
  Senao
    Escreval("Limite máximo de destinos atingido.")
    Retorne falso
  FimSe
FimFuncao

// Função para consultar Clientes cadastrados
Procedimento consultarClientes()
Var
  i: inteiro
Inicio
  Se qtdClientes > 0 Entao
    Escreval("Clientes cadastrados:")
    Para i <- 1 ate qtdClientes faca
      Escreval(i, " - ", clientes[i])
    FimPara
  Senao
    Escreval("Nenhum cliente cadastrado.")
  FimSe
FimProcedimento

// Função para consultar Destinos cadastrados
Procedimento consultarDestinos()
Var
  i: inteiro
Inicio
  Se qtdDestinos > 0 Entao
    Escreval("Destinos cadastrados:")
    Para i <- 1 ate qtdDestinos faca
      Escreval(i, " - ", destinos[i])
    FimPara
  Senao
    Escreval("Nenhum destino cadastrado.")
  FimSe
FimProcedimento

// Menu
Inicio
  qtdClientes <- 0
  qtdDestinos <- 0

  Repita
    Escreval("------ Menu ------")
    Escreval("1 - Cadastrar Cliente")
    Escreval("2 - Cadastrar Destino")
    Escreval("3 - Consultar Clientes")
    Escreval("4 - Consultar Destinos")
    Escreval("5 - Sair")
    Escreval("-------------------")
    Escreval("Escolha uma opção: ")
    Leia(opcao)

    Escolha opcao
      Caso 1
        Escreval("Digite o nome do cliente: ")
        Leia(nomeCliente)
        Se cadastrarCliente(nomeCliente) Entao
          Escreval("Cliente cadastrado com sucesso!")
        Senao
          Escreval("Não foi possível cadastrar o cliente.")
        FimSe

      Caso 2
        Escreval("Digite o destino: ")
        Leia(destino)
        Se cadastrarDestino(destino) Entao
          Escreval("Destino cadastrado com sucesso!")
        Senao
          Escreval("Não foi possível cadastrar o destino.")
        FimSe

      Caso 3
        consultarClientes()

      Caso 4
        consultarDestinos()

      Caso 5
        Escreval("Encerrando o programa...")
    FimEscolha
  Ate opcao = 5
FimAlgoritmo
