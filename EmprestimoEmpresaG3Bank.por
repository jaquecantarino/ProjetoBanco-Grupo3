programa
{	inclua biblioteca Util
	
	funcao inicio()
	{
		cadeia Menu[6]={"Conta Poupança","Conta Corrente","Conta Especial","Conta Empresa","Conta Estudante","Sair"}
		real emprestimoEmpresa=0.0, valorCliente                      
		real saldo=0.00, emprestimo=10000.00
		caracter emprestimoCliente,transacaoCliente, voltaMenu
		inteiro contD=0
		inteiro conta
		inteiro op

		limpa()
		escreva("Bem Vinde ao Banco G3")
		escreva("\nSeu dinheiro em desenvolvimento!\n")
		escreva("\n")

		para(inteiro x=0; x<6; x++){
			escreva(x,"-",Menu[x],"\n")
		}
		
		escreva("\nEscolha a opção desejada:")
		leia(op)

		limpa()
		escreva("Banco G3")
		escreva("\nSeu dinheiro em desenvolvimento!\n")
		escreva("\n")
		escreva("Tipo:",Menu[op],"\n")
		conta = Util.sorteia(000000,999999)
		escreva("Número: ",conta,"-3")
		escreva("\nTemos a opção de emprestimo, seu limite é de até R$ 10.000!!!\n")


	     para (inteiro cont=0;cont<9;cont++){
	     	escreva("Saldo atual: R$ "+saldo +"\nLimite para emprestimo: "+emprestimo)
	      	escreva("\nGostaria de um emprestimo? S-Sim N-Não: ")
	     	leia(emprestimoCliente)

	     	se (emprestimoCliente == 'S' ou emprestimoCliente == 's' ){
	     		escreva("Digite o valor do emprestimo de até R$ 10.000: ")
				leia(emprestimoEmpresa)
				se(emprestimoEmpresa<=0){
				escreva("O valor digitado é negativo ou zero e não pode ser computado")
				} senao se(emprestimoEmpresa>10000.00){
					escreva("Seu limite de emprestimo é R$10.000 o valor de R$",emprestimoEmpresa," é superior")
				} senao{
				saldo = saldo + emprestimoEmpresa
				emprestimo = emprestimo - emprestimoEmpresa
				escreva("Saldo atual: R$ "+saldo +" Limite para emprestimo: "+emprestimo)
				}
	     	}senao se(emprestimoCliente == 'N' ou emprestimoCliente == 'n' ) {	

				escreva("Saldo atual: R$ "+saldo +" Limite para emprestimo: "+emprestimo)
				
	     	}
					
			 
				     escreva("\nSelecione a transação D-Débito C-Crédito: ")
					leia(transacaoCliente)
					escreva("Qual é o valor da transação? ")
					leia(valorCliente)
					se(valorCliente<=0){
					escreva("O valor digitado é negativo ou zero e não pode ser computado") }
					
					senao se(transacaoCliente == 'D' ou transacaoCliente == 'd'){
						contD++
						se(saldo==0.0){
							escreva("Você não tem saldo,faça um emprestimo ou Credito")
						}senao se(valorCliente >saldo){
							escreva("Você não tem saldo suficiente, faça um emprestimo ou Credito")
						}
						senao{
							saldo = saldo - valorCliente	
							escreva("\n"+contD+"° Movimento: Debito R$ "+ valorCliente)
						}
	     			}senao se(transacaoCliente == 'C' ou transacaoCliente == 'c'){
						contD++
						saldo = saldo + valorCliente	
					     escreva("\n"+contD+"° Movimento: credito R$ "+ valorCliente)	     
	     			}
				caracter continuar
				escreva("\nDeseja continuar S-Sim ou N-Nao: ")
                         leia(continuar)
                             se(continuar=='n' ou continuar=='N'){
                                 pare
                             }
				 
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
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 374; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */