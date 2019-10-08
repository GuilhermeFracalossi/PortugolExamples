programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
	inteiro m[5][5], c1,c2, maior=0, posicao=0
	para (c1=0;c1<5;c1++){
		para (c2=0;c2<5;c2++){
			m[c1][c2]=u.sorteia(0, 100)
			escreva (m[c1][c2],"|")
			se (c2==4){
				escreva ("\n")
			}
			se (m[c1][c2]>maior){
				maior=m[c1][c2]
				posicao=c1
			}
		}
	}
	escreva ("\nA linha que possui o maior número é: ",posicao+1)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 389; 
 */