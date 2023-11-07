.data
input_msg:  .asciiz "Digite o valor de N: "
output_msg: .asciiz "A diferença entre o quadrado da soma e a soma dos quadrados dos primeiros N números naturais é: "

.text

# Exibe a mensagem de entrada
li $v0, 4
la $a0, input_msg
syscall

# Lê o valor de N e armazena em $t0
li $v0, 5
syscall
move $t0, $v0

# Inicializa as variáveis auxiliares
li $t1, 1 # Contador = 1
li $t2, 0 # Soma dos números = 0
li $t3, 0 # Quadrado da soma = 0
li $t4, 0 # Quadrado do número = 0
li $t5, 0 # Soma dos quadrados = 0

# Loop para calcular a soma e a soma dos quadrados
while: ble  $t1, $t0, loop # Executa as operações do loop enquanto $t1 <= St0
j exit                     # Caso contrário, sai do loop
loop:
    add  $t2, $t2, $t1  # Soma dos números: $t2 += $t1
    mul  $t4, $t1, $t1  # Quadrado do número: $t1 * $t1
    add  $t5, $t5, $t4  # Soma dos quadrados: $t4 += $t3
    addi $t1, $t1, 1    # Incrementa o contador
    j while
exit:
    
mul $t3, $t2, $t2 # Calcula o quadrado da soma
sub $t6, $t3, $t5 # Calcula a diferença entre o quadrado da soma e a soma dos quadrados
    
# Exibe a mensagem de saída
li $v0, 4
la $a0, output_msg
syscall

# Exibe o resultado
li $v0, 1
move $a0, $t6
syscall
