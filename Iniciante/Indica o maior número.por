programa
{
	//Indica o maior número de um vetor
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro vetor[10], maior
		//Preenche o vetor
		para (inteiro contador=0;contador<10;contador++){
			vetor[contador] = u.sorteia(1,100)
		}

		//Mostra o vetor

		para (inteiro contador=0; contador<10; contador++){
			escreva (vetor[contador]," | ")
			
		}
		
		maior = vetor[0]
		para (inteiro contador=0; contador<10; contador++){
			se (vetor[contador]>maior){
				maior=vetor[contador]
			}
		}
			escreva ("\nO maior número é: ",maior)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 349; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */