# test_touch

Automação Simples de TouchID e FingerPrint
Appium + Cucumber

## Para Iniciar ##


### Instalar o bundler ###
Dentro do diretório test_touch/ execute:
```shell
gem install bundler
```

### Instalar Gems Necessárias  ###
Dentro do diretório test_touch/ execute:
```shell
bundle install
```

## Configurações por Plataforma ##

## Android ##
É preciso habilitar e adicionar uma digital no emulador Android,
ao acessar a tela para adicionar digital execute o comando: 
```shell
adb -e emu finger touch 1 
```

<img src="https://media.giphy.com/media/J19kKgUsBd6jfaUIoF/giphy.gif" alt="Gif" />


## iOS ##
Na primeira execução será solicitado permissão na lista de Acessibilidade: 
```shell
System Preferences > Security & Privacy > Privacy > Accessibility list
```
Conceder permissão para o aplicativo que estiver solicitando

<img src="https://uploaddeimagens.com.br/images/002/289/689/original/acessibilidade.png?1566589459" alt="Imagem" width="500" height="400"/>




## Executando (ver a magia acontecer) ##
Dentro do diretório test_touch/ execute:

#### Android ####
```shell
cucumber -p android
```


#### iOS ####
```shell
cucumber -p ios
```


## Aplicativos fornecidos por: ##

#### Android ####
```shell
https://github.com/paulsbruce/FingerprintDemo
```

#### iOS ####
```shell
https://github.com/liuheng368/LoginDemo
```

