# Aplicações para Consulta do Preço do Bitcoin e Dólar em Tempo Real

Este repositório contém duas aplicações em Ruby que consultam APIs externas para obter o valor do Bitcoin em dólar e real, além da cotação do dólar em real.

## Aplicações

1. index.rb

Esta aplicação consulta a API da `Coindesk` e retorna o preço atual do Bitcoin em dólares.

2. btc.rb

Esta aplicação consulta a API da `AwesomeAPI` e retorna:

* O preço atual do dólar em reais.

* O preço atual do Bitcoin em dólares.

* O preço atual do Bitcoin em reais.

## Pré-requisitos

Para executar as aplicações, você precisa ter instalado:

* Ruby (>= 2.5)

* Bundler (para gerenciar as dependências, caso necessário)

Além disso, será necessário instalar as seguintes gems:
```
  gem install json
  gem install net-http
  gem install active_support
```
##Como Rodar

### Rodar a aplicação `index.rb`
```
ruby index.rb
```
Saída esperada:
```
------------------------------------------------------
- O preço atual do bitcoin em dólar é USD XXXX.XX -
------------------------------------------------------
```
### Rodar a aplicação `btc.rb`
```
ruby btc.rb
```
Saída esperada:
```
------------------------------------------------------
 O preço atual do dólar é: $X.XX
 O preço atual do bitcoin em dólar é: $XX,XXX.XX
 O preço atual do bitcoin em real é: R$XXX,XXX.XX
------------------------------------------------------
```
### Observações

* Ambas as aplicações fazem chamadas HTTP para APIs externas. Certifique-se de estar conectado à internet para que os valores sejam obtidos corretamente.

* Dependendo da API, os valores podem sofrer pequenas variações a cada requisição.

* Caso haja alguma falha na requisição, verifique se os endpoints das APIs ainda estão ativos.

Se precisar de alguma melhoria ou encontrar algum bug, fique à vontade para contribuir! 🚀


---------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Applications for Real-Time Bitcoin and Dollar Price Queries

This repository contains two Ruby applications that query external APIs to fetch the current value of Bitcoin in dollars and Brazilian reais, as well as the dollar-to-real exchange rate.

## Applications

1. index.rb

This application queries the `Coindesk` API and returns the current price of Bitcoin in US dollars.

2. btc.rb

This application queries the `AwesomeAPI` and returns:

* The current price of the US dollar in Brazilian reais.

* The current price of Bitcoin in US dollars.

* The current price of Bitcoin in Brazilian reais.

## Prerequisites

To run the applications, you need to have installed:

* Ruby (>= 2.5)

* Bundler (to manage dependencies, if necessary)

Additionally, you will need to install the following gems:

```
gem install json
gem install net-http
gem install active_support
```

## How to Run
### Running the `index.rb` Application


```ruby index.rb```

Expected Output:

```
------------------------------------------------------
- The current price of Bitcoin in US dollars is USD XXXX.XX -
------------------------------------------------------
```
### Running the `btc.rb` Application

```
ruby btc.rb
```

Expected Output:

```
------------------------------------------------------
 The current price of the US dollar is: $X.XX
 The current price of Bitcoin in US dollars is: $XX,XXX.XX
 The current price of Bitcoin in Brazilian reais is: R$XXX,XXX.XX
------------------------------------------------------
```

### Notes

* Both applications make HTTP requests to external APIs. Ensure you are connected to the internet for the values to be fetched correctly.

* Depending on the API, the values may vary slightly with each request.

* If there is any issue with the request, check if the API endpoints are still active.

If you need any improvements or find any bugs, feel free to contribute! 🚀
