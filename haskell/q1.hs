main :: IO ()
main = print result
  where
    result = lastElementOfModifiedList

initialList :: [Int]
initialList = [30,29..1]

multipliedList :: [Int]
multipliedList = map (*3) initialList

reversedList :: [Int]
reversedList = reverse multipliedList

lastElementOfModifiedList :: Int
lastElementOfModifiedList = head reversedList
