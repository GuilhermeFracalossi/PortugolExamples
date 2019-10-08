programa
{
	funcao inicio()
	{
		real soma=0.0
		inteiro pos=0, x=1
		enquanto (x!=0){
		escreva ("Digite um número: ")
		leia (x)
		se (x>0){
			pos=pos+1
			soma=soma+x
		}}
		escreva ( pos, " números positivos foram informados, a soma deles é igual a ", 
		soma, " e a média ", soma/pos)
	} 
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 67; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */