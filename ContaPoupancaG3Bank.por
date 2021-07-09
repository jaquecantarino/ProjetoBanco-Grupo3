//G3 Bank
//Seu dinheiro em desenvolvimento.

//conta especial não avisa o usuario, não depende dele, se o saque for maior que o saldo aceita o limite
//automaticamente.
programa{
	inclua biblioteca Util
	
	funcao inicio(){
	
		cadeia Menu[6]={"Conta Poupança","Conta Corrente","Conta Especial","Conta Empresa","Conta Estudante","Sair"}
		inteiro op
		real saldo=0.00,saldoPoupanca=0.00
		caracter d,D,c,C //opção de d,D é débito e c,C é crédito
		caracter opP
		inteiro numero //equivale ao número da conta
		inteiro conta
		
		
		escreva("Bem Vinde ao Banco G3")
		escreva("\nSeu dinheiro em desenvolvimento!\n")
		escreva("\n")

		para(inteiro x=0; x<6; x++){
			escreva(x,"-",Menu[x],"\n")
		}
		
		escreva("\nEscolha a opção desejada:")
		leia(op)
//espaço reservado para códigos das operações

		escolha(op) {//codigo da conta poupança
		caso 0:   

		   
		  	limpa()
		  	escreva("Banco G3")
			escreva("\nSeu dinheiro em desenvolvimento!\n")
			escreva("\n")
			escreva("Tipo:",Menu[op],"\n")
			conta = Util.sorteia(000000,999999)
			escreva("Número: ",conta,"-0")

			para(inteiro x=1;x<=10;x++){
				caracter confirma='z'
				inteiro valor
				caracter saldoInsuficiente = 'S'

				opP='z'
				valor=0
				
				escreva("\nOperação numero "+x+"\n")
				escreva("Saldo atual da poupança: "+saldoPoupanca+"\n\n")
				

				enquanto (opP!='D' e opP!='C' e opP!='d' e opP!='c'){
					escreva("Qual movimentação deseja realizar? (digite D ou C) \n")
					leia(opP)
					se (opP!='D' e opP!='C' e opP!='d' e opP!='c'){
						escreva("Senhor(a), tem que ser D ou C. Tente de novo...\n\n")
					}
				}

					//limpa()
					escreva("qual o valor da operação? \n")
					leia(valor)

				
				se(opP=='D' ou opP=='d'){
					enquanto(saldoInsuficiente=='S'){
					se(valor>saldoPoupanca){
						escreva("Saldo insuficiente\n")
						escreva("Saldo atual: "+saldoPoupanca)
						escreva("\n Digite o valor a debitar: ")
						leia(valor)
					}senao{
						saldoInsuficiente='N'
					}
				}
				}
				
				enquanto (confirma!='S' e confirma!='N' e confirma!='s' e confirma!='n'){
					escreva("Confirma operação? (digite S ou N) \n")
					leia(confirma)
					se (confirma!='S' e confirma!='N' e confirma!='s' e confirma!='n'){
						escreva("Senhor(a), tem que ser S ou N. Tente de novo...\n\n")
					}
				}

				se(confirma=='s' ou confirma=='S'){
					se(opP=='d' ou opP=='D'){
						saldoPoupanca -= valor
					} senao se(opP=='c' ou opP=='C'){
						saldoPoupanca += valor
					}
				}senao{
					pare
				}
			
			}
			escreva("Saldo final do dia: "+saldoPoupanca+"\n\n")
			
			inteiro dia
			escreva("Digite o dia de hoje: ")
			leia(dia)
			se (dia==5){
				saldoPoupanca=saldoPoupanca*1.05	
				escreva("Saldo data de Aniversário: "+saldoPoupanca+"\n\n")
			}

			caracter titulo
			escreva("Deseja fazer um título de capitalização?? Hoje pode ser seu dia de sorte!! \n")
			escreva("OBS: será debitado de sua conta poupança \n")
			escreva("Digite 'S' para confirmar: \n")
			leia(titulo)
			se(titulo=='s' ou titulo=='S'){
				saldoPoupanca -= 20
				escreva("Transação efetuada \n")
				escreva("Saldo atual: "+saldoPoupanca+"\n")
			}senao{
				escreva("Transação finalizada")
			}
			
		pare
		
		caso 5:      
		  	limpa()
			escreva("Sistema finalizado!")
			escreva("\nVolte Sempre!")
			escreva("\n\nBanco G3")
			escreva("\nSeu dinheiro em desenvolvimento!\n")
		pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1072; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */