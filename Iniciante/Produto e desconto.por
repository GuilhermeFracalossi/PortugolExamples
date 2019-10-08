programa
{

	//Lê o preço de um produto e o desconto, retornando o novo preço e quanto foi o desconto
	funcao inicio()
	{
		real produto, desconto
		
		escreva ("Qual o preço do produto? \nR$")
		leia (produto)
		escreva ("Qual o desconto? \n")
		leia (desconto)
		escreva ("O novo valor é: R$ ", produto-produto*desconto/100, " sendo um desconto de R$", produto*desconto/100)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 149; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */