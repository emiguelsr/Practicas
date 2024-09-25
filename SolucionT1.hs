module SolucionT1 where
  
relacionesValidas :: [(String, String)] -> Bool
relacionesValidas []  = False
relacionesValidas [x] = fst x == snd x 
-- Cambiar (x:xs) por relaciones
relacionesValidas (x:xs) | sonIguales x (head xs) = relacionesValidas xs
                         | otherwise = True

sonIguales :: (String,String) -> (String,String) -> Bool
sonIguales x y | (fst x == fst y) && (snd x == snd y) = True
               | (fst x == snd y) && (snd x == fst y) = True
               | otherwise = False


personas :: [(String,String)] -> [String]
personas []  = []
personas [x] = fst x : snd x : []
personas (x:xs) = fst x : snd x : [] ++ personas xs


amigosDe :: String -> [(String, String)] -> [String]
amigosDe _ [] = []
amigosDe persona [x] = personaRelacionada persona x
amigosDe persona (x:xs) | personaEnTupla persona x = personaRelacionada persona x ++ [] ++ amigosDe persona xs
                        | otherwise = amigosDe persona xs
                        

personaEnTupla :: String -> (String,String) -> Bool
personaEnTupla persona x | (persona == fst x) || (persona == snd x) = True
                         | otherwise = False

personaRelacionada  ::  String -> (String,String) -> [String]
personaRelacionada persona x | persona == fst x = snd x : []
                             | persona == snd x = fst x : []
                             | otherwise = []

personaConMasAmigos :: [(String, String)] -> String
personaConMasAmigos [] = "yo" -- esta mal. lo tenes que corregir