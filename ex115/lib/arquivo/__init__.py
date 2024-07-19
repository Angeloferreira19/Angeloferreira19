def arquivoExiste(nome):
    try:
        a = open(nome, 'rt')
        a.close()
    except FileNotFoundError:
        return False
    else:
        return True
    

def criarArquivo(nome):
    try:
        a = open(nome, 'wt+')
    except:
        print('Erro na criação do arquivo! ')
    else:
        b = print(f'Arquivo {nome} criado com sucesso! ')
        return b
    finally:
        a.close()
    
def lerArquivo(nome):
    try:
        a = open(nome, 'rt')
    except:
        print('Erro ao ler o arquivo! ')
    else:
        for linha in a:
            dado = linha.split(';')
            dado[1] = dado[1].replace('\n', '')
            print(f'{dado[0]:<30}{dado[1]:>3} anos')


def cadastrar(arq, nome='Desconhecido', idade=0):
    try:
        a = open(arq, 'at')
    except:
        print('\033[0;31mHouve um ERRO na abertura do arquivo!\033[m')
    else:
        try:
            a.write(f'{nome};{idade}\n')
            print(f'\033[0;34mNovo registro de {nome} adicionado com sucesso.\033[m')
        except:
            print('\033[0;31m Houve um ERRO na hora de escrever os dados!\033[m')
        a.close()
