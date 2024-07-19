def leiaInt(msg):
    ok = False
    valor = 0
    while True:
        n = str(input(msg))
        if n.isnumeric():
            valor = int(n)
            ok = True
        else:
            print('\033[0;31m ERRO! Digite somente um número inteiro. \033[m')
        if ok:
            break
    return valor

def linha(tam = 42):
    return '-' * tam


def cabeçálho(txt):
    print(linha())
    print(txt.center(42))
    print(linha())
    
    
def menu(lista):
    cabeçálho('MENU PRINCIPAL')
    c = 1
    for item in lista:
        print(f'\033[0;32m{c}\033[m - \033[0;34m{item}\033[m')
        c += 1
    print(linha())
    opc = leiaInt('\033[0;32mSua Opção: \033[m')
    return opc
