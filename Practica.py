#python3 es analogo a ghci y con
#import (Nombre de la carpeta sin .py corre el archivo de vuelta)
#python3 (nombre de  la carpeta incluyendo .py corre todo el archivo)
"""print("Hola, mundo!")


def suma(x: int, y: int) -> int:
    return x + y
print(suma(1,2))
"""
#Ejercicio 1
#1.1
import math


def imprimir_hola_mundo():
   print("Hola Mundo")

#Cada vez que se modifique el código hay que hacer el siguiente procedimiento
#Para ejecutar:
# 1) Escribir python3
# 2) import (Nombre de archivo sin .py)
# 3) (Nomre del archivo).(Nombre de la función)()

#1.2

def imprimir_un_verso():
    print("Bad Romance \n I want your love and I want your revenge \n you and me \n could write a bad romance.") 

#SIEMPRE hay que importar la carpeta que tenga la función y llamar a la carpeta que tenga la función al utilizarla 

#1.3

def raizDe2():
    x = math.sqrt(2)
    return round(x,4)
    

def raizDe2_2():
    return round(math.sqrt(2),4)

#1.4 

def factorial_de_dos() -> int:
    x = 2
    x = x*(x-1)
    return x

#1.5 

def perimetro() -> float:
    return 2*math.pi

#Ejercicio 2

#2.1

def imprimir_saludo(nombre: str):
        print("Hola", nombre)

#Colocar comillas dobles en el prompt cuando se escriben strings

#2.2

def raiz_cuadrada_de(numero: int):
    return math.sqrt(numero)

#2.3

def fahrenheit_a_celcius(temp_far: float) -> float:
    return (temp_far-32)*5/9

#2.4

def imprimir_dos_veces(estribillo: str):
    print(estribillo*2)

#2.5

def es_multiplo_de(n: int, m: int) -> bool:
    for k in range(m,1,1): 
        while(m != 0): 
             if(n == m*k): 
                 return True
        
             else:
                return False
        