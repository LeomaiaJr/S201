main :: IO ()
main = do
  print $ computeValue 5  
  print $ computeValue 0  
  print $ computeValue (-3)

computeValue :: Int -> Int
computeValue n
  | n > 0     = factorial n
  | otherwise = n * 2

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)
