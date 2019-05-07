require 'json'
require 'date'

module CurrencyExchange
  @file = File.read('./data/data.json')
  @data_hash = JSON.parse(@file)

  def self.rate(date, from_currency, to_currency)
    date = date.strftime('%Y-%m-%d')
    raise 'That date does not exist' unless @data_hash[date]
    raise 'Invalid input' unless from_currency.is_a? String
    raise 'Invalid input' unless to_currency.is_a? String
    raise 'No currency found on date' if !@data_hash[date][to_currency] ||
                                         !@data_hash[date][from_currency]

    @data_hash[date][to_currency] / @data_hash[date][from_currency]
  end
end
