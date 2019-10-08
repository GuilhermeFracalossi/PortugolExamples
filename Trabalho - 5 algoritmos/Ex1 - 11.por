programa
{
	funcao inicio()
	{
	inteiro n1,n2,n3, x,c=1

	n1=1
	n2=1
	n3=1
	
	leia (x)
	enquanto(n3<x+1){
	n3=n2+n1
	n2=n1
	n1=n3
	c=c+1
	}
	escreva(n1)
	}
	}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 103; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */