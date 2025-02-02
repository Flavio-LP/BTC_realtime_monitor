require 'net/http'
require 'json'
require 'pry'
require 'active_support/all'

class Quotation_money


    def initialize(url)
        @url = url
    end 


    def quotation_stats

        stats = "#{quotation}" 

        quotation_stats = JSON.parse(stats)
        dolar = format('%.2f' ,quotation_stats[0])
        btc_dolar = "#{ActiveSupport::NumberHelper.number_to_currency(quotation_stats[1], unit: '$', separator: '.', delimiter: ',')}"
        real = "#{ActiveSupport::NumberHelper.number_to_currency((quotation_stats[2]), unit: 'R$', separator: ',', delimiter: '.')}"


        #binding.pry
        puts "------------------------------------------------------"
        puts " O preço atual do dólar é: $#{dolar}"
        puts " O preço atual do bitcoin em dólar é: #{btc_dolar} "
        puts " O preço atual do bitcoin em real é: #{real} "
        puts "------------------------------------------------------"

    end 


    private
    def quotation

        url = URI(@url)
        response = Net::HTTP.get(url)
        data = JSON.parse(response)

        real_price = data['USDBRL']['low']
        btc_dolar = data['BTCUSD']['low']
        btc_real = data['BTCBRL']['low'] 


        quotation = [real_price, btc_dolar, btc_real]

        return quotation
    end


end 

Quotation_money.new("https://economia.awesomeapi.com.br/last/USD-BRL,BTC-USD,BTC-BRL").quotation_stats