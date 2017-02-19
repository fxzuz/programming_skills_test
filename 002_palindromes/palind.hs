import Data.List
import Data.Char

main :: IO ()
main = do
    lines <- getLines
    let lower = (map . map) toLower lines
    mapM_ putStrLn $ sort [x | x <- lower, and $ zipWith (==) x (reverse x)]

getLines :: IO [String]
getLines = do
    x <- getLine
    if x == ""
        then return []
        else do
            xs <- getLines
            return $ x:xs
