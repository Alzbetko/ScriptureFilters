function name(row)
{
	R = row
	gsub(/[0-9]+$/, "", R)
	return R
}

BEGIN { OUTPUT_ENABLED = 0; VERSE = 0; BOOK_CHAPTER = fullname(BOOK) " " CHAPTER;}
$0 ~ "^[0-9]+[ ].*$" { VERSE = $1 }
$0 ~ "^[0-9 ]*[ A-Za-záčďéěíňóřšťúůýžÁČĎÉĚÍŇÓŘŠŤÚŮÝŽ]+[ ][0-9]+$" { if ( $0 == BOOK_CHAPTER ) { OUTPUT_ENABLED = 1 } else { OUTPUT_ENABLED = 0 } }
( OUTPUT_ENABLED == 1 && FROM_VERSE <= VERSE && VERSE <= TO_VERSE ) { print $0 }
