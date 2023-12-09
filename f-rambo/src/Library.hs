module Library where
import PdePreludat


doble::Number -> Number 
doble numero = numero * 2
data Arma = Arma {
    tamanioCargador :: Number,
    balas :: Number
    } deriving (Show, Eq)


data Rambo = Rambo {
    armaPrincipal :: Arma,
    armaSecundaria :: Arma
    } deriving (Show, Eq)


balasTotales :: Rambo -> Number
balasTotales rambo = balas (armaPrincipal rambo) + balas (armaSecundaria rambo)

disparar :: Arma -> Arma
disparar arma 
              | balas arma == tamanioCargador arma = arma {balas = balas arma - 2}
              | balas arma > 1 =arma {balas = balas arma -1}
              |otherwise = arma

dispararTodo:: Rambo -> Rambo
dispararTodo rambo = rambo{
    armaPrincipal = disparar(armaPrincipal rambo),
    armaSecundaria = disparar(armaSecundaria rambo)}