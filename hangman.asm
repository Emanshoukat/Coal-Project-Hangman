.model small
.stack 100h

.data

;Word Bank

word0 db "EmanPagal$"
word1 db "Cristiano$"
word2 db "Bobzy$"
word3 db "Kroos$"
word4 db "Monitors$"
word5 db "Huraira$"
word6 db "Resume$"
word7 db "Griffin$"


wordptrs dw offset word0, offset word1, offset word2, offset word3,
         dw offset word4, offset word5, offset word6, offset word7

;Game State Variables

currentWord db 20 Dup("$")
guessedWord db 20 Dup(" ")
wrongGuesses db 20 Dup(0)
wordLen      db 0
wrongCount   db 0
guessedCount db 0
gameOver     db 0

;LCG Seed
randSeed dw 0

.Code
main proc

mov ax,@data
mov ds, ax

mov ah, 4ch
int 21h

main endp
end main
