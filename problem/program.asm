// COLOCA AQUÍ TU NOMBRE COMPLETO JUAn JOSE AMAYA VERGARA
// COLOCA AQUÍ TU ID 000168722
// COLOCA AQUÍ TU CORREO ELECTRÓNICO juan.amayav@upb.edu.co

(INICIO)
            @KBD
            D=M
            @84
            D=D-A
            @LINEAD
            D;JEQ

            @KBD
            D=M
            @67
            D=D-A 
            @LIMPIAR
            D;JEQ

            @INICIO
            0;JMP

(LIMPIAR)
            @16384 
            D=A
            @coord1 
            M=D 
            @8192
            D=A
            @contador1
            M=D
            @1
            D=A 
            @salto1
            M=D
            @color1
            M=0
            @RPINTAR
            0;JMP

(LINEAD)
            @16400 
            D=A
            @coord 
            M=D 
            @256 
            D=A
            @contador
            M=D
            @32
            D=A 
            @salto
            M=D
            @256
            D=A
            @color
            M=D

            @PINTAR
            0;JMP

(CLINE)

            @20480
            D=A
            @coord1
            M=D
            @32
            D=A
            @contador1
            M=D
            @1
            D=A
            @salto1
            M=D
            @color1
            M=-1

            @RPINTAR
            0;JMP

(PINTAR)
            @coord
            D=M
            @pscreen
            M=D

(LPINTAR)
            @contador
            D=M
            @CLINE
            D;JEQ

            @color
            D=M
            @pscreen
            A=M
            M=D

            @contador
            M=M-1

            @salto
            D=M

            @pscreen
            M=M+D

            @LPINTAR
            0;JMP

(RPINTAR)
            @coord1
            D=M
            @pscreen
            M=D

(NPINTAR)
            @contador1
            D=M
            @END
            D;JEQ

            @color1
            D=M
            @pscreen
            A=M
            M=D

            @contador1
            M=M-1

            @salto1
            D=M

            @pscreen
            M=M+D

            @NPINTAR
            0;JMP


(END)
            @INICIO
            0;JMP


