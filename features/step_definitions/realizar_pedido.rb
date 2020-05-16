Dado("que eu acesso o site da magazine luiza pela {string}") do |url|
 @busca.url(url)
end

Dado("pesquiso pelo produto {string}") do |produto|
  @busca.busca(produto)
end

Quando("o resultado do produto {string} aparece clico no produto") do |produto|
  expect(find('#main-title > strong').text).to have_content produto
  achei_produto = find('#product_155569400 > div.nm-product-info > h2')
  achei_produto.click
end

Quando("clico no botão adicionar a sacola") do
  click_button 'Adicionar à sacola'
end

Entao("o produto é adicionado na sacola") do
  @celular = page.find('.header-tip__product-txt').value.clone 
  expect(find('.header-tip__product-txt').text).to have_content @celular
  
end
