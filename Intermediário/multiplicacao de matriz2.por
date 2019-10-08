programa
{
	//Algoritmo para somar duas matrizes, nesse caso geradas com número aleatórios
	inclua biblioteca Util -->u
	funcao inicio()
	{
		inteiro matriz1[2][2], matriz2[2][2], matrizResultado[2][2]

		
		escreva ("Matriz 1\n")
		para (inteiro linha=0; linha<2; linha++){
			para (inteiro coluna=0;coluna<2;coluna++){
				matriz1[linha][coluna] = u.sorteia(0, 10)
				escreva (matriz1[linha][coluna], "|")
				se (coluna==1){
					escreva ("\n")
				}
			}
		}

		
		escreva ("\nMatriz 2\n")
		para (inteiro linha=0; linha<2; linha++){
			para (inteiro coluna=0;coluna<2;coluna++){
				matriz2[linha][coluna]=u.sorteia(0, 10)
				escreva (matriz2[linha][coluna], "|")
				}
				escreva ("\n")
				}


		escreva ("\nResultado\n")
		para (inteiro linha=0; linha<2; linha++){
			para (inteiro coluna=0;coluna<2;coluna++){
				para (inteiro posicao=0;posicao<2;posicao++){
				matrizResultado[linha][coluna]=matriz1[linha][posicao]*matriz2[posicao][coluna]
				}
				escreva (matrizResultado[linha][coluna], "|")
				
				se (linha==1){
					escreva ("\n")
				}
			}
		}
				

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 627; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */