# language: pt
Funcionalidade: Touch ID/FingerPrint 


@ios @android
Cenário: Usar Validação OK
Dado que solicite a validação por digital
Quando inserir digital corretamente
Então deve exibir um retorno positivo

@ios @android
Cenário: Usar Validação Erro
Dado que solicite a validação por digital
Quando inserir digital incorretamente
Então deve exibir um retorno negativo