# ScriptureFilters
AWK filters for Bible

Quick and dirty utilities for filtering Bible content
- right now in czech only, but more will follow
- motivation : cli tool to filter bible content
- content range e.g. Gn 10 1ff will follow
- content ranges from file will follow

## INSTALLATION STEPS
- copy content of bin folder (not the folder) into ~/bin
- perform chmod +x ~/bin/bref
- replace bin/books/Ekumenicky.txt The file is just placeholder. Open it and read content.
  Download content from internet and replace placeholder with downloaded file, keep file name.

## USAGE

From terminal run: bref BOOK CHAPTER FROM TO

### example:

   bref Jr 1 3 5

### output:
   
3 Stávalo se též za dnů judského krále Jojakíma, syna Jošijášova, až do konce jedenáctého roku vlády
judského krále Sidkijáše, syna Jóšijášova, až do přestěhování Jeruzaléma v pátém měsíci toho roku.

4 Stalo se ke mně slovo Hospodinovo:

5 "Dříve než jsem tě vytvořil v životě matky, znal jsem tě, dříve než jsi vyšel z lůna, posvětil jsem tě,
dal jsem tě pronárodům za proroka."

