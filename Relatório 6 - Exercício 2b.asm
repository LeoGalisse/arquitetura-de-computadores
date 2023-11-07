.data

# Inicializa o array: array_a[5] = {1, 2, 3, 4, 5}
array_a: .word 1, 2, 3, 4, 5

# Inicializa o array: array_A[21] = {1, 2, 3, ..., 21}
array_A: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21

# Inicializa o array: array_b[15] = {1, 2, 3, ..., 15}
array_b: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15

# Inicializa o array: array_c[3] = {1, 2, 3}
array_c: .word 1, 2, 3 

.text

# Exercício 1 -----

la $s1, array_b # Carrega o endereço base do array b em $s1
lw $t1, 60($s1) # Carrega o décimo quinto elemento do array: $t1 = array_b[15]

li $t2, 0 # Inicializa a variável a = 0 em $t2
li $t3, 5 # Inicializa a variável c = 5 em $t3

sub $t2, $t1, $t3 # Calcula a diferença entre $t1 e $t3 e armazena em $t2

# Exercício 2 -----

la $s1, array_a # Carrega o endereço base do array a em $s1
la $s2, array_c # Carrega o endereço base do array c em $s2
lw $t1, 20($s1) # Carrega o quinto elemento do array a: $t1 = array_a[5]
lw $t2, 12($s2) # Carrega o terceiro elemento do array c: $t2 = array_c[3]

li $t3, 0 # Inicializa a variável b = 0 em $t3

add $t3, $t1, $t2 # Calcula a soma entre $t1 e $t2 e armazena em $t3

# Exercício 3 -----

la $s1, array_A # Carrega o endereço base do array A em $s1
lw $t1, 84($s1) # Carrega o vigésimo primeiro elemento do array: $t1 = array_A[21]

li $t2, 21 # Inicializa a variável b = 21 em $t2
li $t3, 0  # Inicializa a variável c = 0 em $t3

sub $t3, $t2, $t1 # Calcula a diferença entre $t2 e $t1 e armazena em $t3
