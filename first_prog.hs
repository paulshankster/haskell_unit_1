messyMain :: IO()
messyMain = do
  print "Who is the mail for?"
  recipient <- getLine
  print "What is the Title?"
  title <- getLine
  print "Who is the Author?"
  author <- getLine
  print ("Dear " ++ recipient ++ ",\n" ++ "Thanks fot buying " ++ title ++ "\nthanks,\n" ++ author )
