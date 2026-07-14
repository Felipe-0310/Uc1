dicionario = {'nome': [],
              'idade': [],
              'peso': [],
              'altura':[]}



aluno = []
print('#'* 20, 'BEM VINDO A NARA FIT', '#'*20)

while True :
    print('1- Cadastrar Aluno(a)')
    print('2- Listar Alunos')
    print('3- Sair')
    opcao = int(input('Escolha uma opcao: '))

    if opcao == 1: 
        escolha_produto= input('Digite o nome do Aluno(a): ').title()
        produto.append(escolha_produto)
    elif opcao == 2:
        if len(produto)== 0:
            print('Nenhum produto cadastrado')
        else: 
          for i in produto:
            print(f'Produto {i}')
    elif opcao == 3:
        break
    else:
      print('Escolha uma opção válida!') 
