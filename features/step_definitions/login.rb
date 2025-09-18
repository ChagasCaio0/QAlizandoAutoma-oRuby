Dado('que o usuario queira se logar') do
  @test = LoginPage.new
  @test.load
end

Quando('ele digitar as credenciais {string} e {string}') do |email, password|
  @test.user_login(email, password)
end

Entao('deve acessar com sucesso') do
  
end