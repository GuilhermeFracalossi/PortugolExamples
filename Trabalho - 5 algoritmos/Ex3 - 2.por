programa
{
	funcao inicio()
	{
		inteiro n=0,impares=0,soma=0,c=200
		enquanto (c!=0){
			escreva ("Digite um número: \n")
			leia (n)
			se (n%2==1){
				impares=impares+1
				soma=soma+n
			}		
			c=c-1
		}
		escreva (impares, " números são ímpares e a soma dos números é igual a ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 193; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */