programa
{
	funcao inicio()
	{
		real m,t1,t2,t3
		escreva ("Nota do primeiro trimestre: \n")
		leia (t1)
		escreva ("Nota do segundo trimestre: \n")
		leia (t2)
		escreva ("Nota do terceiro trimestre:\n")
		leia (t3)
		m=(t1+t2+t3)/3
		se (m>=7){
			escreva ("Aprovado")
		}
		senao se (m<1.66){
		escreva ("Reprovado") }
		
		senao se(m>1.66 e m<7){
			escreva ("Você precisa de: ",(50-m*6)/4, " para aprovar")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 353; 
 */