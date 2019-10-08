programa
{
	//Feito or Guilherme F.
	//Os avivos de compilação (inteiro para real), são como o Thanos... inevitáveis
	//Neste algoritmo primeiramente a tabela é preenchida com as posições dos navios, e após iniciam os ataques (de preferência por um segundo jogador)

	//HAVE FUN
	inclua biblioteca Matematica --> mat
	inclua biblioteca Util --> u
	inteiro posicaobarcos[10][4],tamanhos[10]={5,4,4,3,3,3,2,2,2,2}, barco=0,c,l, 
	tabela[9][18]=
	{{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
	{ 1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1},
	{ 1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1},
	{ 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
	{ 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
	{ 1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1},	
	{ 1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1},	
	{ 0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1},	
	{ 0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
	},
	
	tabelavazia[9][18]=
	{{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
	{ 1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1},
	{ 1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1},
	{ 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
	{ 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
	{ 1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1},	
	{ 1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1},	
	{ 0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1},	
	{ 0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
	}
	
	funcao inicio(){
	inteiro x1=0,y1=0,x2=0,y2=0, acertos=0
	//Introducao
	escreva ("-----------Bem vindo ao Jogo Batalha Naval - Tabela Periódica ---------\n\n")
	escreva ("0 - Posições inválidas \n")
	escreva ("1 - Posições válidas \n")
	escreva ("2 - Posições jogadas \n")
	escreva ("3 - Navio atingido\n\n")

	escrevetabela(tabela)

	enquanto (barco<10){ //Enquanto os 10 barcos não forem preenchidos
																		//[barco-1] acessa a posicao certa do vetor, ele começa com 1
		escreva ("\n\nDigite a primeira posição (linha, coluna) para o barco ", barco+1 ," (tamanho ", tamanhos[barco],") \n") 
		leia (x1,y1)
		escreva ("\n\nDigite a segunda posição (linha 2, coluna 2) para o barco ", barco+1," \n", "       Sugestões:  ")
		sugestoes(x1,y1,tamanhos[barco])
		escreva ("\n")
		leia (x2,y2)
		
		
		//Diminui todas as posicoes em 1 para funcionarem corretamente na matriz (a primeira linha e coluna é mostrada para o usuario como "1"
		x1--
		x2--
		y1--
		y2--
		
		se (posicao(x1,y1,x2,y2,tabela) e tamanho(x1,y1,x2,y2, tamanhos[barco])){ //Se tamanho e posicao passarem no teste:
			posicaobarcos[barco][0]=x1
			posicaobarcos[barco][1]=y1
			posicaobarcos[barco][2]=x2
			posicaobarcos[barco][3]=y2
			preenche2(x1,y1,x2,y2, tabela) //Preenche a tabela com o numero 2
			entorno0(tabela)//Impede de barcos serem colocados colados (preenche com 0 ao redor do barco)
			barco++ //Passa para o proximo barco
			escrevetabela(tabela) //escreve a tabela de novo
		}
		senao {
			escreva ("\n\nPosição ou tamanho informados não correspondentes, tente novamente")
		}	
	}
	u.aguarde(1000)
	limpa()
	
	enquanto (acertos<30){
		escreva("\n\nDigite uma posição para atacar!\n")
		leia (x1,y1)
		x1--
		y1--
		se (acertou(x1,y1)){
			escreva ("\n\nVocê acertou um barco!\n\n")
			tabelavazia[x1][y1] = 3
			tabela[x1][y1] = 3
			escrevetabela(tabelavazia)
			acertos++
			para (l=0; l<10; l++){
				se (barcofinalizado(l)){
				escreva ("\n---BARCO DESTRUÍDO!!---")
				entorno0(tabelavazia)
				posicaobarcos[l][0]=1
				posicaobarcos[l][1]=5
				posicaobarcos[l][2]=1
				posicaobarcos[l][3]=6		
			}
			}
			
		}
		
		senao {
			escreva ("\n\nVocê errou!\n\n")
			tabelavazia[x1][y1]=0
			escrevetabela(tabelavazia)
		}
			
	}
	
	escreva ("\n\n------------Parabéns, você acertou todos os barcos!!------------\n")
	}
	//Escreve a tabela periódica requerida com as informações atualizadas
	funcao escrevetabela (inteiro tabelaperiodica[][]){
		escreva ("   1| 2| 3| 4| 5| 6| 7| 8| 9|10|11|12|13|14|15|16|17|18|\n  ------------------------------------------------------\n") //Numera as colunas
			para (l = 0; l < 9; l++){
			escreva (l+1 , "| ") //Numera as linhas 
				para (c = 0; c < 18; c++){	
					escreva (tabelaperiodica[l][c], "  ")
				}	
			escreva ("\n")
			}
		}

	//Gera as sugestÃµes de possoveis jogadas para ajudar o usuário
	funcao sugestoes (inteiro x1, inteiro y1, inteiro t){
		x1--
		y1--
		se (posicao(x1 , y1 , x1+t-1, y1, tabela)){
			escreva (x1+t,",", y1+1, "  ")
		}
		se (posicao(x1 , y1 , x1-t+1 , y1, tabela)){
			escreva (x1-t+2,",", y1+1, "  ")
		}
		se (posicao(x1 , y1 , x1 , y1+t-1, tabela)){ 
			escreva (x1+1,",", y1+t, "  ")
		}
		se (posicao(x1 , y1 , x1 , y1-t, tabela)){
			escreva (x1+1,",", y1-t+2)
		}
	}
	
	//Testa se as coordenadas informadas sÃ£o vÃ¡lidas
	funcao logico posicao (inteiro x1, inteiro y1, inteiro x2, inteiro y2, inteiro tabelaperiodica[][]){
		se (x1 < 0 ou x1 > 8 ou x2 < 0 ou x2 > 8 ou y1 < 0 ou y1 > 17 ou y2 < 0 ou y2 > 17) retorne falso 
		se (x1 == x2){
			para (c=mat.menor_numero(y1, y2); c< mat.maior_numero(y1, y2)+1; c++){
				se(tabelaperiodica[x1][c] != 1){
					retorne falso
					}
				}
			}
		senao se(y1==y2){
			para (l=mat.menor_numero(x1, x2); l < mat.maior_numero(x1, x2)+1; l++){
				se (tabelaperiodica[l][y1] != 1){
					retorne falso
				}
			}
		}
		retorne verdadeiro
	}

	//Verifica se o barco informado tem o tamanho correto
	funcao logico tamanho(inteiro x1, inteiro y1, inteiro x2, inteiro y2, inteiro tamanho){
		se (x1 == x2){
			se (tamanho == mat.maior_numero(y1,y2) - mat.menor_numero(y1,y2)+1){
				retorne verdadeiro}
		}
		se (y1==y2){
			se (tamanho == mat.maior_numero(x1,x2) - mat.menor_numero(x1,x2)+1){
				retorne verdadeiro}
		}
		retorne falso
	}

	
	// Transforma as coordenadas informadas em "2" na tabela
	funcao preenche2(inteiro x1, inteiro y1, inteiro x2, inteiro y2, inteiro tabelaperiodica[][]){
		
		se (x1 == x2){
			para (c = mat.menor_numero(y1,y2); c< mat.maior_numero(y1, y2)+1; c++){
				tabelaperiodica[x1][c] = 2
			}
		}
		se (y1==y2){
			para (l = mat.menor_numero(x1,x2); l < mat.maior_numero(x1, x2)+1; l++){
				tabelaperiodica[l][y1] = 2
			}
		}
		}

	funcao entorno0(inteiro tabelaperiodica[][]){
		inteiro l, c
		para (l = 0; l<9; l++){
			para (c = 0; c<18; c++){
				se (tabelaperiodica[l][c]>=2){
					se (l+1<9){ //Abaixo
						se (tabelaperiodica[l+1][c]<2) tabelaperiodica[l+1][c]=0
					}
					se (l-1>=0){//Acima
						se (tabelaperiodica[l-1][c]<2) tabelaperiodica[l-1][c]=0
					}
					se (c+1<18){ //Direita
						se (tabelaperiodica[l][c+1]<2) tabelaperiodica[l][c+1]=0
					}
					se (c-1>=0){ //Esquerda
						se (tabelaperiodica[l][c-1]<2) tabelaperiodica[l][c-1]=0				
					}

					
					se (l-1>=0 e c+1<18){ //Canto superior direito
						se (tabelaperiodica[l-1][c+1]<2) tabelaperiodica[l-1][c+1]=0 
					}
					se (l+1<9 e c+1<18){ //Canto inferior direito
						se (tabelaperiodica[l+1][c+1]<2) tabelaperiodica[l+1][c+1]=0	
					}
					se (l-1>=0 e c-1>=0){//Canto superior  esquerdo
						se (tabelaperiodica[l-1][c-1]<2) tabelaperiodica[l-1][c-1]=0
					}
					se (l+1<9 e c-1>=0){//Canto inferior esquerdo
						se (tabelaperiodica[l+1][c-1]<2) tabelaperiodica[l+1][c-1]=0	
					}
	
				}
				
			}
		}
	}

	//Verifica se o usuário acertou onde havia um barco
	funcao logico acertou(inteiro x, inteiro y){
		se (tabela[x][y] == 2) {
			retorne verdadeiro
		}
		senao retorne falso
		
	}

	//Verifica se o barco foi totalmente destruído

	funcao logico barcofinalizado(inteiro idbarco){
	inteiro l=0, c=0
	se (posicaobarcos[idbarco][0] == posicaobarcos[idbarco][2]){
		para (c=posicaobarcos[idbarco][1]; c<posicaobarcos[idbarco][3]+1; c++){
			se (tabelavazia[posicaobarcos[idbarco][0]] [c] !=3) {
				retorne falso
			}
			
		}
	}

	se (posicaobarcos[idbarco][1] == posicaobarcos[idbarco][3]){
		para (l=posicaobarcos[idbarco][0]; l<posicaobarcos[idbarco][2]+1; l++){
			se (tabelavazia[l] [posicaobarcos[idbarco][1]] !=3) {
				retorne falso
			}
			
	}
	}
	retorne verdadeiro

	
	
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3184; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */