--Clase Practica
{-pertenece :: (Eq t) => [t] -> [t] -> Bool
pertenece _ [] = False --No Hacer (x:xs) == [] = False porque siempre va a dar una lista vacía.
pertenece n  (x:xs) | n == x = True
                    |otherwise = pertenece n xs

hayRepetidos :: (Eq t) => [t] -> [t] -> Bool
hayRepetidos [] = False
hayRepetidos (x:xs) | pertenece x xs = True
                    | otherwise = hayRepetidos xs

-- hayRepetidos (n,m) = n == m (No usar)

quitar :: (Eq t) =>  t -> [t] -> [t]
quitar n [] = []
quitar n (x:xs) |n == x = xs
                | otherwise x: quitar n xs

maximo :: (Eq t) =>  t -> [t] -> [t]
maximo [x] = x
maximo (x:y:xs) | x > y = maximo (x:xs)
                | otherwise = maximo (y:xs) Ya que x <= y

ordenar:: (Eq t) =>  t -> [t] -> [t]
ordenar [] = []
ordenar l = ordenar (quitar) ++ (maximo l)
                -}
{-

Recursión sobre listas

Nombraron algunas funciones, repaso de la teórica y nos mandaron a hacer ejercicios.
-}

-- Practica 4 (continuación)
{-
Ejercicio 10)

b) f2 (n,q)

problema f2 (n:Z,q:R):R {
    requiere {n > 0}
    asegura {resultado = sumatoria de i = 1 hasta n de q^i}
    }
-}

f2 :: Integer ->  Float -> Float
f2 n q | n == 1 = q
       | otherwise = q^n + f2 (n-1) q

{-

c) f3 (n,q)

problema f3 (n:Z,q:R):R {
    requiere {n > 0}
    asegura {resultado = sumatoria de i = 1 hasta 2n de q^i}
    }
-}

f3 :: Integer -> Float -> Float
f3 n q | n == 1 = q
       | n == 2 = q^2 + q
       | otherwise = q^n + f3 (n - 1) q

{-
d) problema f4 (n:Z,q:R): R{
    requiere {n >= 0}
    asegura {sumatoria de i = n hasta 2n de q^i}
    }

f4 :: Integer ->  Float -> Float
f4 n q | n == 0 = 1
       | n == 1 = 1 + q
       | otherwise = q^(2*n + 2) + f4 (n-1) q

-}

f4 :: Integer -> Float -> Float
f4 n q = f4a n q (2*n)

f4a:: Integer -> Float -> Integer -> Float
f4a n q m | n == m = q^m
          | otherwise = q^m + f4a n q (m-1)
