-- Licence : Apache 2.0
module Configuration where

import Control.Monad (replicateM)
import Data.Array.MArray
import System.Random
import System.Random (randomRIO)

s1 :: [String]
s1 = [ "Non mais a toi je te parle pas."
     , "Tu me coupes pas quand je parle."
     , "Toi je t'ecoute pas."
     , "Toi je t'ai pas parle"
     , "Quid ? C'est quoi quid ?"
     , "Je deteste l'electronique"
     , "Android c'est de la m***de."
     , "Ton ecole c'est de la m***de."
     , "De toute facon, vous etes cadres les gars."
     , "Sous android, on peut pas envoyer de mails."
     , "Un bon debriefing et on acete direct pour tester."
     , "Au fait, il me faut un satellite pour cet apres-midi."
     , "Un developpeur, ca fait des spec. Sinon, c'est pas un developpeur."
     , "Vous vouliez pas y aller, on a fait de vous des hommes riches ! (LoL)"
     ]

s2_a :: [String]
s2_a = [ "En tant qu'ingenieur,"
       , "Si tu es ingenieur,"
       , "Lorsque tu es ingenieur"
       ]

s2_b :: [String]
s2_b = [ "tu n'as pas besoin de manger."
       , "quid c'est pas pro'."
       , "tu n'as pas besoin d'etre paye. Avoir un travail qui te plait est suffisant."
       , "tu n'as pas a demander des heures supplementaires. C'est normal de les faire."
       , "tu n'as pas besoin de faire de pause. Avoir un travail qui te plait est suffisant."
       ]

s3_a :: [String]
s3_a = [ "Faut demander le SDK"
       , "Ont-ils le SDK"
       , "Ont-ils la spec"
       ]

s3_b :: [String]
s3_b = [ "du rapport."
       , "du produit."
       , "du logiciel."
       , "du materiel."
       ]

s4_a :: [String]
s4_a = [ "Hey les filles,"
       , "Hey les gars,"
       ]

s4_b :: [String]
s4_b = [ "c'est l'heure de bosser."
       , "encore en train de parler ?"
       , "la reunion a commencee y a 5 minutes."
       , "si ca continue comme ca, vous allez vous faire virer."
       , "on part pas a 18h. On reste jusqu'a 19-20h. C'est comme ca."
       ]

