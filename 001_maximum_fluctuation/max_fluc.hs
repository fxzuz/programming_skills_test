import Data.Char
import Data.List

main :: IO ()
main = do
    line <- getLine
    print (fluc $ toDouble $ wordsWhen (== ',') line)

wordsWhen :: (Char -> Bool) -> String -> [String]
wordsWhen p s = case dropWhile p s of
    "" -> []
    s' -> w : wordsWhen p s''
          where (w, s'') = break p s'

toDouble :: [String] -> [Double]
toDouble []  = []
toDouble xss = x : toDouble xs where
    x  = read (head xss) :: Double
    xs = tail xss

fluc :: [Double] -> Double
fluc [] = 0.0
fluc xs = (mp - fromIntegral av) / mp * 100 where
    mp = maximum xs
    av = floor $ sum xs / genericLength xs
