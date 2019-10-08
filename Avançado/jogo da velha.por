programa
{
	
	funcao inicio()
	{	
		logico jogo=verdadeiro, jogada=falso
		inteiro l, c, c1=0
		cadeia m[3][3], posicao="", XouO="X"
		escreva ("Bem vindo ao jogo da velha mil grau\n\n")
		m[0][0]="  "
		m[0][1]="   "
		m[0][2]="   "
		m[1][0]="  "
		m[1][1]="   "
		m[1][2]="   "
		m[2][0]="  "
		m[2][1]="   "
		m[2][2]="   "	
		
		para (l=0;l<3;l++){
			para (c=0;c<3;c++){
				escreva (m[l][c])
				se (c<2){
					escreva ("|")
				}
				
				
			}
			se (l<2){
					escreva ("\n----------\n")
				}
		}

		m[0][0]="1"
		m[0][1]="2"
		m[0][2]="3"
		m[1][0]="4"
		m[1][1]="5"
		m[1][2]="6"
		m[2][0]="7"
		m[2][1]="8"
		m[2][2]="9"	

		escreva ("\n\n")
		para (l=0;l<3;l++){
			para (c=0;c<3;c++){
				escreva (m[l][c])
				se (c<2){
					escreva (" | ")
				}
				
				
			}
			se (l<2){
					escreva ("\n----------\n")
				}
		}
		
		escreva ("\n\n")
		
		enquanto (c1<9 e jogo==verdadeiro){
		
		se (c1%2==0){
		XouO="X"}
		senao {
		XouO="O"}
		escreva ("Digite a posição do -",XouO,"-\n\n")
		leia (posicao)	
		para (l=0;l<3;l++){
			para (c=0;c<3;c++){
				se(posicao==m[l][c]){
					m[l][c]=XouO
				}
			}
		}

		para (l=0;l<3;l++){
			para (c=0;c<3;c++){
				escreva (m[l][c])
				se (c<2){
					escreva (" | ")
				}
				
				
			}
			se (l<2){
					escreva ("\n----------\n")
				}
		}
		
		escreva ("\n\n")
		c1++

		se (
		m[0][0]=="X" e m[1][1]=="X" e m[2][2]=="X" ou
		m[0][2]=="X" e m[1][1]=="X" e m[2][0]=="X" ou 
		m[0][0]=="X" e m[1][0]=="X" e m[2][0]=="X" ou
		m[0][1]=="X" e m[1][1]=="X" e m[2][1]=="X" ou
		m[0][2]=="X" e m[1][2]=="X" e m[2][2]=="X" ou
		m[0][0]=="X" e m[0][1]=="X" e m[0][2]=="X" ou
		m[1][0]=="X" e m[1][1]=="X" e m[1][2]=="X" ou
		m[2][0]=="X" e m[2][1]=="X" e m[2][2]=="X"   ){
			escreva ("O -X- venceu")
			jogo=falso
		}
		se (
		m[0][0]=="O" e m[1][1]=="O" e m[2][2]=="O" ou
		m[0][2]=="O" e m[1][1]=="O" e m[2][0]=="O" ou 
		m[0][0]=="O" e m[1][0]=="O" e m[2][0]=="O" ou
		m[0][1]=="O" e m[1][1]=="O" e m[2][1]=="O" ou
		m[0][2]=="O" e m[1][2]=="O" e m[2][2]=="O" ou
		m[0][0]=="O" e m[0][1]=="O" e m[0][2]=="O" ou
		m[1][0]=="O" e m[1][1]=="O" e m[1][2]=="O" ou
		m[2][0]=="O" e m[2][1]=="O" e m[2][2]=="O"   ){
			escreva ("O -O- venceu")
			jogo=falso
		}
		}
		
		
		
		
			
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 353; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */