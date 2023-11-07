.data
a: .word 4, 5 # Inicializa o array: a[2] = {4, 5}

.text

li $t1, 0 # Inicializa a variável auxiliar: j = 0

la $s1, a      # Carrega o endereço base do array 'a' em $s1
lw $t2, 0($s1) # Carrega o primeiro elemento do array: $t2 = a[0]
lw $t3, 4($s1) # Carrega o segundo elemento do array: $t3 = a[1]

blt $t2, 5, if # Compara $t2 com 5, se $t2 < 5, vá para 'if'
j else         # Caso contrário, vá para 'else'

if: 
    addi $t1, $t1, 2  # Se $t2 < 5, então incrementa j em 2
    sw   $t1, 0($s1)  # Armazena o novo valor de j em a[0]
    j exit
else:
    addi $t1, $t3, 10 # Se $t2 >= 5, define j como a[1] + 10
exit:
