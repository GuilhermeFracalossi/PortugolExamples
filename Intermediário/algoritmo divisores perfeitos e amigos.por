programa
{
	funcao inicio()
	{
		//Um número é perfeito se a soma de seus divisores for igual ao próprio número
		//Ex: 6 é perfeito pois seus divisores são 1,2,3 e 1+2+3 == 6

		//Dois números são amigos se a soma dos divisores do numero X é igual ao número Y
		//e a soma de divisores do número Y é igual a X
		inteiro x,y,z
		escreva ("Digite um número:\n")
		leia (x)
		se (perfeito(x)){
			escreva ("\nO número é perfeito\n")
		}
		senao {
			escreva ("\nO número não é perfeito\n")
		}
		escreva ("\n")

		escreva("Digite dois números\n")
		leia (y,z)
		se (amigos(y,z)){
			escreva ("\nOs números são amigos")
		}
		senao {
			escreva ("\nOs números não são amigos")
		}
		
	}

	//Retorna a soma dos números que são divisores do número informado
	funcao inteiro somaDivisores(inteiro n1){
		inteiro soma=0, n2
		para (n2=1; n2<n1; n2++){
			se (n1%n2==0){
				soma=soma+n2	
			}
		}
		retorne soma
	}

	funcao logico perfeito(inteiro x){ //Retorna se um número é perfeito
		se(x == somaDivisores(x)){
			retorne verdadeiro
		}senao{
			retorne falso
		}
	}

	funcao logico amigos(inteiro n1, inteiro n2){ //Retorna se dois números são amigos
		se (somaDivisores(n1)==n2 e somaDivisores(n2)==n1){
			retorne verdadeiro
		}
		senao {
			retorne falso
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 885; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */