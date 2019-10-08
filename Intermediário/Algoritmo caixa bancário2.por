programa
{
	
	funcao inicio()
	{
		real s1=0.0, s2=100.00, valor
		inteiro contaEscolhida, numeroDeContas=3, conta1
		cadeia t1= "Rafael", t2="Bianca", confirmar, nop
		logico op=verdadeiro

		escreva("Escolha uma opção: \n 1 - Depositar \n 2 - Sacar \n 3 - Verificar Saldo \n")
			leia (opcao)
			se (opcao == 1){
				
				depositar(conta())
			}


	}

	funcao conta(){
		escreva("Digite o número da conta: \n")
		leia (contaEscolhida)
		para (inteiro contador=0; contador<numeroDeContas; contador++){
			se(contas[contador] == contaEscolhida){
				escreva ("Conta encontrada \n\n")
			}
		}
		retorne contaEscolhida
	}
	funcao depositar(){
		
	}
		/*
		enquanto (op==verdadeiro){
			escreva("Escolha uma opção: \n 1 - Depositar \n 2 - Sacar \n 3 - Verificar Saldo \n")
			leia (opcao)
			se (opcao == 1) {
				escreva ("Digite o número da conta: ")
				leia (c)
				escreva ("Digite o valor a ser depositado: ")
				leia (valor)
				se (c==c1 ou c==c2){
					se (c==c1 e valor>0.0){
						escreva ("Conta ", c1 ,"\nTitular: " ,t1,"\nR$ ", s1," + R$ ", valor, "\n", "Total: R$ ", s1+valor, "\n", "Confirmar? (s/n) \n")
						leia (confirmar)
						se (confirmar=="s"){
							escreva ("Operação realizada com sucesso. \n")
							s1=s1+valor}
							escreva ("Nova operação? (s/n) \n")
							leia (nop)
							se (nop=="n"){
								op=falso
						}}

					senao se (c==c2 e valor >0.0){
						escreva ("Conta ", c2 ,"\nTitular: " ,t2,"\nR$ ", s2," + R$ ", valor, "\n", "Total: R$ ", s2+valor, "\n", "Confirmar? (s/n) \n")
						leia (confirmar)
						se (confirmar=="s"){
							s2=s2+valor
							escreva ("Operação realizada com sucesso. \n")}
							escreva ("Nova operação? (s/n) \n")
							leia (nop)
							se (nop=="n"){
								op=falso
						}
					}
					senao {
						escreva ("Valor inválido, tente novamente. \n")}
					}
					
				senao {
					escreva ("Conta Inválida, tente novamente. \n")
					}}
					
				senao se(opcao==2){
					escreva ("Digite o número da conta: ")
					leia (c)
					escreva ("Digite o valor a ser sacado: ")
					leia (valor)
					se (c==c1 ou c==c2){
					se (c==c1 e valor>0.0 e valor<s1 e valor>0.0 e valor<=500.00){
						escreva ("Conta ", c1 ,"\nTitular: " ,t1,"\nR$ ", s1," - R$ ", valor, "\n", "Total: R$ ", s1-valor, "\n", "Confirmar? (s/n) \n")
						leia (confirmar)
						se (confirmar=="s"){
							escreva ("Operação realizada com sucesso. \n")
							s1=s1-valor}
							escreva ("Nova operação? (s/n)\n")
							leia (nop)
							se (nop=="n"){
								op=falso}}
					senao se(c==c2 e valor>0.0 e valor<s2 e valor>0.0 e valor<=500.00){
						escreva ("Conta ", c2 ,"\nTitular: " ,t2,"\nR$ ", s2," - R$ ", valor, "\n", "Total: R$ ", s2-valor, "\n", "Confirmar? (s/n) \n")
						leia (confirmar)
						se (confirmar=="s"){
							escreva ("Operação realizada com sucesso. \n")
							s2=s2-valor}
							escreva ("Nova operação? (s/n)\n")
							leia (nop)
							se (nop=="n"){
								op=falso}}
						senao {
						escreva ("Valor inválido, tente novamente. \n")}
					}
					senao {
					escreva ("Conta Inválida, tente novamente. \n")
					}
					
							}
				
					
					
				se (opcao == 3){
					escreva ("Digite o número da conta: ")
					leia (c)
					se (c==c1){
						escreva ("R$ ",s1 , "\n")
					
				}
					senao se (c==c2){
						escreva ("R$ ",s2 , "\n")
				}
					senao {
						escreva ("Conta inválida, tente novamente. \n")
				}
					escreva ("Nova operação? (s/n)\n")
					leia (nop)
					se (nop=="n"){
						op=falso
				}
			}
		
		}*/}}
	


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 652; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */