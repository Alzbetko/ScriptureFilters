$0 ~ /[A-Z1-9][a-zA-Z]+[ ][0-9]+[:]([0-9]+(f+|[-][0-9]+|))([,]([0-9]+(f+|[-][0-9]+|)))*/ { 

  match($0,/[A-Z1-9][a-zA-Z]+/,book)
  match($0,/[ ][0-9]+[:]/,xchapter)
  chapter = substr(xchapter[0], 2, length(xchapter[0]) - 2)
  match($0,/[:].*/,verselist)
  verses = substr(verselist[0], 2, length(verselist[0]) - 1)
  
  pbook = book[0]
  pchapter = chapter
  pversefrom = ""
  pverseto = ""
  
  split(verses, verse_list, ",")
  for(verse_key in verse_list) {
  
	  verse = verse_list[verse_key]
  
	  if (verse ~ /^[0-9]+[-][0-9]+$/) {
		match(verse,/^[0-9]+/, vfrom)
		match(verse,/[0-9]+$/, vto)
		pversefrom = vfrom[0]
		pverseto = vto[0]
	  } else if  (verse ~ /^[0-9]+f$/) {
		vfrom = substr(verse, 1, length(verse)-1)
		pversefrom = vfrom
		pverseto = ++vfrom
	  } else if  (verse ~ /^[0-9]+ff$/) {
		vfromall = substr(verse, 1, length(verse)-2)
		pversefrom = vfromall
		pverseto = 1000
	  } else {
		pversefrom = verse
		pverseto = verse
	  }
	  
	  print "echo \"------->>>" pbook " " pchapter ":" verse "<<<---------\""
	  print "bref " pbook " " pchapter " " pversefrom " " pverseto
  }
}
