programa
{
	inclua biblioteca Util -->u
	funcao inicio()
	{
		inteiro m[10][10], c1,c2, soma=0
		para (c1=0;c1<10;c1++){
			para (c2=0;c2<10;c2++){
				m[c1][c2]=u.sorteia(1, 100)
				soma=soma+m[c1][c2]
				escreva (m[c1][c2], "|")
				se (c2==9){
					escreva ("\n")
				}
			}
			
		}
			escreva ("\nSoma=",soma)
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 308; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */