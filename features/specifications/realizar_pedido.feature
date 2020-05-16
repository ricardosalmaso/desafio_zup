#language: pt

@realizar_pedido
Funcionalidade: Realizar Pedido

-Eu como usuário
-Quero realizar a pesquisa de um produto e validar a inclusão do mesmo no carrinho

Cenario: realizar pedido
Dado que eu acesso o site da magazine luiza pela "url"
E pesquiso pelo produto "celular"
Quando o resultado do produto "celular" aparece clico no produto
E clico no botão adicionar a sacola
Entao o produto é adicionado na sacola