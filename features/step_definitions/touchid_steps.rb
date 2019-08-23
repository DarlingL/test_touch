Dado("que solicite a validação por digital") do
    @screen = Touchid.new
    @screen.select_login
end
  
Quando("inserir digital corretamente") do
    @screen.insert_id_true
end
  
Então("deve exibir um retorno positivo") do
    @screen.expected_login
end

Quando("inserir digital incorretamente") do
    @screen.insert_id_false
end
  
Então("deve exibir um retorno negativo") do
    @screen.expected_error_login
end