programa
{
	//Funcao que soma o valor de todas as posições de um vetor
	funcao inicio()
	{
		inteiro vetor[10], soma=0

		
		para (inteiro contador=0;contador<10;contador++){
			leia (vetor[contador])
		}
		
		para (inteiro contador=0;contador<10;contador++){
			soma = soma+vetor[contador]
		}

		escreva ("A soma do vetor é:", soma)

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 335; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */