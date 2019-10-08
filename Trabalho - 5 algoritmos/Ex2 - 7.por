programa
{
	funcao inicio()
	{
		real media=0.0, nota=0.0, paprovados=0.0
		inteiro aluno=1, tri=0.0, a=0.0,b=0.0,c=0.0
		cadeia conceito=""
		enquanto (aluno!=121){
			enquanto (tri!=3.0){
			tri=tri+1
			escreva ("Digite a nota do aluno ", aluno, " - ", tri, "º Trimestre:\n")
			leia (nota)
			media=media+nota
			}
			se (media/3.0>=6.0){
				paprovados=paprovados+1.0
			}
			se (media/3.0>=9.0){
				a=a+1
			}
			se (media/3.0>=7.0 e media/3<9.0){
				b=b+1
			}
			se  (media/3.0>=6.0 e media/3.0<7){
				c=c+1
			}
			media=0.0
			aluno=aluno+1
			tri=0
			}
			
			se (a>b e a>c){
				conceito="A"
			}
			se (b>a e b>c){
				conceito="B"
			}
			se (c>a e c>b){
				conceito="C"
			}

			escreva ("O percentual de alunos aprovados é ", paprovados/120*100.0, "% e o conceito mais obtido foi ", conceito)
		}	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 163; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */