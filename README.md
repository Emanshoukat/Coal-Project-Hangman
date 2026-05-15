# Coal-Project-Hangman
.model small
.stack 100h

.data

word1 db "EmanPagal$"
word2 db "Cristiano$"
word3 db "Bobzy$"
word4 db "Kroos$"
word5 db "Monitors$"
word6 db "Huraira$"
word7 db "Resume$"
word8 db "Griffins$"

wordptr dw offset word1, offset word2, offset word3, offset word4,
        dw offset word5, offset word6, offset word7, offset word8



currentWord db 20 dup<"$">
guessedWord db 20 dup<" ">
wrongGuesses db 20 dup<0>
wordLen      db 0
wrongCount   db 0
guessesCount db 0
gameOver     db 0
