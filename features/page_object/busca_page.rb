require 'rspec'
class Busca
    include Capybara::DSL
    
  def url(url)
    url = visit 'https://www.magazineluiza.com.br/'
    Capybara.page.driver.browser.manage.window.maximize
  end

    def busca(produto)
      find('input[id=inpHeaderSearch').set produto
      find('input[id=inpHeaderSearch]').send_keys(:enter)
  end
end



    