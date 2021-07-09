programa{
	inclua biblioteca Util
	
	funcao inicio(){
	
		cadeia Menu[6]={"Conta Poupança","Conta Corrente","Conta Especial","Conta Empresa","Conta Estudante","Sair"}
		inteiro op
		inteiro conta

		limpa()
		escreva("Bem Vinde ao Banco G3")
		escreva("\nSeu dinheiro em desenvolvimento!\n")
		escreva("\n")

		para(inteiro x=0; x<6; x++){
			escreva(x,"-",Menu[x],"\n")
		}
		
		escreva("\nEscolha a opção desejada:")
		leia(op)

		se(op==0){
			//Conta Poupança
		} senao se (op==1){
			//Conta Corrente
} senao se (op==2){ // Conta Especial - JAQUELINE	
	          real saldo=0.00
			caracter movimento//opção de d,D é débito e c,C é crédito
			inteiro numero //equivale ao número da conta
			real valorMovimento=0.00
			caracter continuar, voltaMenu	
			real limiteEspecial=1000.00
			inteiro extrato
			real saldoFinal=0.00
			real saldoVariavel=0.00
			inteiro interacao[10]

				limpa()
				escreva("Banco G3")
				escreva("\nSeu dinheiro em desenvolvimento!\n")
				escreva("\n")
				escreva("Tipo:",Menu[op],"\n")
				conta = Util.sorteia(000000,999999)
				escreva("Número: ",conta,"-2")
				
				para(extrato=0; extrato<=9; extrato++){
	
					escreva("\nSaldo Atual R$: ",saldo)
					escreva("\nSaldo Limite Especial R$: ",limiteEspecial)
		               escreva("\nMovimento:D-debito ou C-Crédito: ")
					leia(movimento)
					escreva("Valor do movimento R$: ")
					leia(valorMovimento)
	
						se(movimento!='d' e movimento!='D' e movimento!='c' e movimento!='C'){
							escreva("Opção de transação inválida! \n")					
						} senao se(movimento=='D' ou movimento=='d'){
							se(valorMovimento>saldo+limiteEspecial /*e valorMovimento>limiteEspecial*/){
								escreva("Não há saldo para essa transação. Faça um crédito para continuar!\n")
							}senao se(saldo>=valorMovimento){
								saldo-=valorMovimento
							} senao se (saldo==0){
								saldo+=valorMovimento
								limiteEspecial-=valorMovimento
								saldo-=valorMovimento
							} senao se (saldo <= valorMovimento){
							  	saldoVariavel=valorMovimento-saldo
							  	limiteEspecial-=saldoVariavel
							  	saldo=0.00
							}
						}
						senao se(movimento=='C' ou movimento=='c'){
								saldo+=valorMovimento
	                         }
	                         escreva("\nDeseja continuar S-Sim ou N-Nao: ")
	                         leia(continuar)
	                         	se(continuar=='n' ou continuar=='N'){
	                         		pare
	                         	}
	               } 
	               se(extrato==9){
	               	escreva("\n Limite de 10 movimentações excedido.")
	               }            
				escreva("\nDeseja voltar ao Menu principal? S-Sim ou N-Não: ")
				leia(voltaMenu)
					se(voltaMenu=='s' ou voltaMenu=='S'){
						inicio()
					} senao {
						escreva("\n\nVolte Sempre!\n")
			               escreva("Banco G3")
						escreva("\nSeu dinheiro em desenvolvimento!\n")
				  	}
		} senao se (op==3){
			//COonta Empresa
		
		} senao se (op==4){
			//Conta Estudante
			
		} senao se (op==5){
			limpa()
			escreva("Sistema finalizado!")
			escreva("\nVolte Sempre!")
			escreva("\n\nBanco G3")
			escreva("\nSeu dinheiro em desenvolvimento!\n")
		}
	escreva("\n\n\nFim do programa!")
	}	
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 195; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */