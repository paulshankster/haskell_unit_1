main :: IO()
main = do
  print "Who is the mail for?"
  recipient <- getLine
  print "What is the Title?"
  title <- getLine
  print "Who is the Author?"
  author <- getLine
--  print ("Dear " ++ recipient ++ ",\n" ++ "Thanks fot buying " ++ title ++ "\nthanks,\n" ++ author )
  print (createEmail recipient title author)

toPart recipient = "Dear " ++ recipient ++ ",\n"
bodyPart bookTitle = "Thanks for buying " ++ bookTitle ++ ".\n"
fromPart author = "Thanks,\n"++author
createEmail recipient bookTitle author = toPart recipient ++
                                         bodyPart bookTitle ++
                                         fromPart author

