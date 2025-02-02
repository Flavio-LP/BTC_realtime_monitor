require 'net/http'
require 'json'
require 'pry'


class Bitcoin
    def initialize(url)
        @url = url
    end

    def actual_price
        puts "------------------------------------------------------"
        puts "- O preço atual do bitcoin em dólar é USD #{fetch_json_bitcoin} -"
        puts "------------------------------------------------------"
    end

    private 
    def fetch_json_bitcoin

        url = URI(@url)
        response = Net::HTTP.get(url)
        data = JSON.parse(response)


        return data['bpi']['USD']['rate'] 

    end 
end

Bitcoin.new("https://api.coindesk.com/v1/bpi/currentprice/BTC.json").actual_price
