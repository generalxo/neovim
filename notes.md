# Vim motions to remember

### Navigation
- Ctrl-o -> Go Back in the jump list
- Ctrl-i -> Go Forward in the jump list

### Selection
- vat -> select tag and everything in it: Select from here <x>Stuff<x> To here
- vit -> select everything in a tag <x>I will be selected<x>
- vab -> mark block with () Note will select closest one and does not have to be on the same line as cursor
- vaB -> mark block with {}
- o -> move cursor to other end of selection

### Navigation
- % -> will jump from one bracket to the other {stuff (some stuff[more stuff])}
- _ -> will go to the beginning of a line where the first character is. A lot more usefull than using 0
- $ -> will go to end of the line
- g_ -> will go to the last non blank character of a line
- gg -> will go to the first line of a file
- G -> will go to the last line of a file
- fx -> will go to the next ocurrence of x in a line
- Fx -> will go to the previous ocurrence of x in a line

### Manipulation
- in visual mode: gc -> will comment selected text
