programa
{
	//Faz a média dos número em um vetor e quantos estão acima da média
	inclua biblioteca Util-->u
	inteiro vetor[20], acima=0
	funcao inicio()
	{
		inteiro media=0
		para (inteiro contador=0; contador<20; contador++){
			vetor[contador] = u.sorteia(1,100)
			media = media+vetor[contador]
			escreva (vetor[contador], " | ")

		}

		escreva (media)
		escreva ("\n\n\nA média é ", media/20, " e há ",acimaMedia(media)," números acima da média")
	}

	funcao inteiro acimaMedia(inteiro media){
		
		para (inteiro contador=0; contador<20; contador++){
			se (vetor[contador]>20){
				acima++
			}
			
		}
		retorne acima
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 190; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */