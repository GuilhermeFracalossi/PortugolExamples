programa
{
	inclua biblioteca Util-->u
	funcao inicio()
	{
	inteiro m[10][10], c1, c2, acimadiagonal=0, maior=0, coluna=0
	para (c1=0; c1<10; c1++){
		para (c2=0; c2<10; c2++){
			m[c1][c2]=u.sorteia(0, 99)
			escreva (m[c1][c2], "|")
		}
		escreva ("\n")
	}
	para (c1=0; c1<10; c1++){
		para (c2=0; c2<10; c2++){
		se (c2>c1){
			acimadiagonal=acimadiagonal+m[c1][c2]
		}
	}}
	escreva ("\nA soma dos números acima da diagonal é ", acimadiagonal, "\n")

	para(c1=0; c1<10; c1++){
		maior=m[c1][0]
		para (c2=0; c2<10; c2++){
			se (m[c1][c2]>maior){
				maior=m[c1][c2]
			}
		}
	escreva ("\nO maior número da linha ", c1 , " é " , maior)
		}
		para (c1=0; c1<10; c1++){
			para (c2=0; c2<10; c2++){
			 	se (m[c1][c2]<maior){
			 		maior=m[c1][c2] 
			 		coluna=c2
			 	}}}
	escreva ("\n\nA coluna com menor número é ",coluna)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 327; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */