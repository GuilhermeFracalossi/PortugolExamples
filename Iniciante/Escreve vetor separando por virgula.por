programa
{

	//Escreve um vetor, separando cada posição com uma ','
	funcao inicio()
	{
		inteiro vetor[10]
		para (inteiro contador=0;contador<10;contador++){
			leia (vetor[contador])
		}

		escreva ("O vetor informado foi: ")
		para (inteiro contador=0;contador<10;contador++){
			escreva (vetor[contador])
			se (contador<9){
				escreva (",")
			}
			
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 189; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */