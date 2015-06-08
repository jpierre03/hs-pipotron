import Control.Monad (replicateM)
import Data.Array.MArray
import System.Random
import System.Random (randomRIO)

-- http://lyah.haskell.fr/demarrons

main = pipotron

-------------------------------------------------------------------------------

cartProd xs ys = [(x,y) | x <- xs, y <- ys]

concatCartProd xs ys = [(x ++ y) | x <- xs, y <- ys]


printAll xs = if null xs        -- If the list is empty
    then return ()              -- then we're done, so we quit.
    else do print (head xs)     -- Otherwise, print the first element
            printAll (tail xs)  -- then print all the other elements.

pick :: [a] -> IO a
pick xs = randomRIO (0, length xs - 1) >>= return . (xs !!)

-------------------------------------------------------------------------------

a = [
    "En tant qu'ingenieur, ",
    "Si tu es ingenieur, ",
    "Lorsque tu es ingenieur, "
    ]

b = [
    "tu n'as pas besoin de manger.",
    "tu n'as pas besoin de faire de pause. Avoir un travail qui te plait est suffisant.",
    "tu n'as pas a demander des heures supplementaires. C'est normal de les faire.",
    "tu n'as pas besoin d'etre paye. Avoir un travail qui te plait est suffisant.",
    "quid c'est pas pro'."
    ]

c = [
    "Non mais a toi je te parle pas.",
    "Quid ? C'est quoi quid ?",
    "Un developpeur, ca fait des spec. Sinon, c'est pas un developpeur.",
    "Android c'est de la m***de.",
    "Sous android, on peut pas envoyer de mails",
    "Au fait, il me faut un satellite pour cet apres-midi.",
    "Ton ecole c'est de la m***de."
    ]

d = [
    "Faut demander le SDK ",
    "Ont-ils le SDK ",
    "Ont-ils la spec "
    ]

e = [
    "du rapport.",
    "du produit.",
    "du logiciel.",
    "du materiel."
    ]

f = [
    "Hey les filles, ",
    "Hey les gars, "
    ]

g = [
    " c'est l'heure de bosser.",
    " encore en train de parler ?",
    " la reunion a commencee y a 5 minutes.",
    " on part pas a 18h. On reste jusqu'a 19-20h. C'est comme ca.",
    " si ca continue comme ca, vous allez vous faire virer."
    ]

--"Sinon tu n'es pas ing�nieur"
--"Sinon tu n'es pas d�veloppeur"

--"C'est pas pro"
--

pipotronSentences = (
                     (concatCartProd a b)
                  ++ c
                  ++ (concatCartProd d e)
                  ++ (concatCartProd f g)
                  )

pipotronAll = printAll pipotronSentences

pipotron = pick pipotronSentences

cpTrolleur = pipotron