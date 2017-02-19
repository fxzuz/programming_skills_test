main :: IO ()
main = mapM_ putStrLn [show x | x <- [258..393], x `mod` 5 /= 0]
