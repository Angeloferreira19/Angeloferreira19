from lib.interface import *
from lib.arquivo import *
from time import sleep

arq = 'cursoemvideo.txt'
if not arquivoExiste(arq):
    criarArquivo(arq)

while True:
    resposta = menu(['Cadastrar pessoas', 'Ver pessoas cadastradas', 'Sair do sistema'])
    if resposta == 1:
        cabeçálho('NOVO CADASTRO...')
        nome = str(input('Nome: '))
        idade = leiaInt('Idade: ')
        cadastrar(arq, nome, idade)
    elif resposta == 2:
        cabeçálho('\033[0;32mAcessando pessoas cadastradas...\033[m')
        lerArquivo(arq)
    elif resposta == 3:
        cabeçálho('\033[0;31mSaindo do sistema... Até logo!\033[m')
        break
    else:
        print('\033[0;31mERRO! Digite uma opção valida!\033[m')
        sleep(2)
        continue
    sleep(2)
