.data

# Inicializa o array: array_a[10] = {1, 2, 3, ..., 10}
array_a: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 

# Inicializa o array: array_b[245] = {1, 2, 3, ..., 245}
array_b: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245

# Inicializa o array: array_c[3] = {1, 2, 3}
array_c: .word 1, 2, 3 

.text

# Exercício 1 -----

la $s1, array_a # Carrega o endereço base do array a em $s1

li $t1, 10 # Inicializa a variável b = 10
li $t2, 5  # Inicializa a variável c = 5

sub $t1, $t1, $t2 # Calcula a diferença entre $t1 e $t2 e armazena em $t1

sw $t1, 40($s1)   # Armazena o resultado da diferença em array_a[10]

# Exercício 2 -----

la $s1, array_b # Carrega o endereço base do array b em $s1

li $t1, 45  # Inicializa a variável a = 45
li $t2, 200 # Inicializa a variável c = 200

add $t1, $t1, $t2 # Calcula a soma entre $t1 e $t2 e armazena em $t1

sw $t1, 980($s1)  # Armazena o resultado da soma em array_b[245]

# Exercício 3 -----

la $s1, array_c # Carrega o endereço base do array c em $s1

li $t1, 1 # Inicializa a variável a = 1
li $t2, 2 # Inicializa a variável b = 2

sub $t1, $t2, $t1 # Calcula a diferença entre $t2 e $t1 e armazena em $t1

sw $t1, 0($s1)    # Armazena o resultado da diferença em array_c[0]
