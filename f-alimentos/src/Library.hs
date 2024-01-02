module Library where
import PdePreludat
import GHC.Num (Num)

doble :: Number -> Number
doble numero = numero + numero

type Alimento = String
data InformacionNutricional = Info {
  alimento :: Alimento,
  calorias :: Number,
  grasas :: Number,
  carbohidratos :: Number,
  proteinas :: Number
} deriving (Show, Eq)

infoManzana :: InformacionNutricional
infoManzana = Info "Manzana" 95 0.3 25.1 0.5
infoBanana :: InformacionNutricional
infoBanana = Info "Banana" 134 0.5 34.3 1.6
infoPera :: InformacionNutricional
infoPera = Info "Pera" 101 0.2 27.1 0.6
infoEspinaca :: InformacionNutricional
infoEspinaca = Info "Espinaca" 7 0.1 1.1 0.9
infoYogurt :: InformacionNutricional
infoYogurt = Info "Yogurt" 149 8.0 11.4 8.5
infoGarbanzos :: InformacionNutricional
infoGarbanzos = Info "Garbanzos" 269 4.2 45.0 14.5

infosNutricionales :: [InformacionNutricional]
infosNutricionales = [
  infoManzana, infoBanana, infoPera,
  infoEspinaca, infoYogurt, infoGarbanzos
  ]

alimentosPocoCaloricos :: [InformacionNutricional] -> [Alimento]
alimentosPocoCaloricos  = map alimento .filter pocoCalorico
alimentosPocoCaloricos'  = map alimento .filter ((<=100).calorias)


pocoCalorico :: InformacionNutricional -> Bool
pocoCalorico  = (<=100).calorias  